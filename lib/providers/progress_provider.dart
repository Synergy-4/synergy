import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/utility.dart';
import '../features/progress/skill_chart_data.dart';

part 'progress_provider.g.dart';

@riverpod
Future<List<SkillChartData>> progress(ProgressRef ref, int childId) async {
  final result = await ApiClient.instance.getList(
    '/sessions/$childId/progress',
  );

  if (result is ApiSuccess) {
    final List<dynamic> data = result.data;
    return data.map((json) {
      final points = (json['points'] as List)
          .map(
            (p) => AccuracyPoint(
              sessionIndex: p['session_index'],
              accuracy: p['accuracy'].toDouble(),
              date: DateTime.parse(p['date']),
            ),
          )
          .toList();

      return SkillChartData(
        skillId: json['skill_id'],
        skillLabel: json['skill_label'],
        domain: json['domain'],
        moduleId: json['module_id'],
        status: json['status'],
        points: points,
        currentAccuracy: json['current_accuracy'].toDouble(),
        averageAccuracy: json['average_accuracy'].toDouble(),
        totalSessions: json['total_sessions'],
      );
    }).toList();
  } else {
    // Return empty list or throw error depending on desired UI behavior
    return [];
  }
}
