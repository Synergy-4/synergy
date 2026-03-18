import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/utility.dart';
import '../features/progress/skill_chart_data.dart';
import '../models/session_model.dart';
// import 'dart:math';

part 'progress_provider.g.dart';

@riverpod
Future<List<SkillChartData>> progress(Ref ref, int childId) async {
  // Fetch session history instead of the non-existent progress endpoint
  final result = await ApiClient.instance.getList('/sessions/$childId/history');

  if (result is ApiSuccess) {
    final List<dynamic> data = result.data;
    final allSessions = data
        .map((json) => SessionResult.fromJson(json))
        .toList();

    // Group sessions by activity type (which we map to skillId)
    final Map<String, List<SessionResult>> sessionsByActivity = {};
    for (final session in allSessions) {
      if (!session.status.toLowerCase().contains('complete')) continue;

      final type = session.activityType;
      if (!sessionsByActivity.containsKey(type)) {
        sessionsByActivity[type] = [];
      }
      sessionsByActivity[type]!.add(session);
    }

    final charts = <SkillChartData>[];

    // Process each group to generate the UI models
    for (final entry in sessionsByActivity.entries) {
      final activityName = entry.key;
      final typeSessions = entry.value;

      // Sort oldest to newest
      typeSessions.sort((a, b) => a.playedAt.compareTo(b.playedAt));

      final points = <AccuracyPoint>[];
      double totalAcc = 0.0;

      // Take the most recent 10 sessions for plotting
      final recentSessions = typeSessions.length > 10
          ? typeSessions.sublist(typeSessions.length - 10)
          : typeSessions;

      for (int i = 0; i < recentSessions.length; i++) {
        final session = recentSessions[i];

        // accuracyScore comes from API (0-100 or 0-1)
        final rawAcc = session.accuracyScore;
        final accuracy = rawAcc > 1.0 ? rawAcc / 100.0 : rawAcc;

        points.add(
          AccuracyPoint(
            sessionIndex: i,
            accuracy: accuracy,
            date: session.playedAt,
          ),
        );

        totalAcc += accuracy;
      }

      final double avgAccuracy = points.isEmpty
          ? 0
          : (totalAcc / points.length);
      final double currAccuracy = points.isEmpty ? 0 : points.last.accuracy;

      charts.add(
        SkillChartData(
          skillId: activityName,
          skillLabel: _formatActivityName(activityName),
          domain: _mapActivityToDomain(activityName),
          moduleId: 'M${(charts.length + 1).toString().padLeft(2, '0')}',
          status: currAccuracy > 0.8 ? 'mastered' : 'active',
          points: points,
          currentAccuracy: currAccuracy,
          averageAccuracy: avgAccuracy,
          totalSessions: typeSessions.length,
        ),
      );
    }

    return charts;
  } else if (result is ApiFailure) {
    throw Exception(result.message);
  } else {
    return [];
  }
}

// Simple helper to human-read activity types
String _formatActivityName(String activityType) {
  return activityType
      .replaceAll('_', ' ')
      .split(' ')
      .map(
        (word) => word.isNotEmpty
            ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
            : '',
      )
      .join(' ');
}

// Simple domain mapper
String _mapActivityToDomain(String activityType) {
  final type = activityType.toLowerCase();
  if (type.contains('matching') ||
      type.contains('sorting') ||
      type.contains('puzzle')) {
    return 'Cognitive Skills';
  } else if (type.contains('emotion') || type.contains('feeling')) {
    return 'Emotional Regulation';
  } else if (type.contains('talk') ||
      type.contains('speech') ||
      type.contains('communication')) {
    return 'Communication';
  } else if (type.contains('social') || type.contains('friends')) {
    return 'Social Interaction';
  }
  return 'Daily Living'; // default fallback
}
