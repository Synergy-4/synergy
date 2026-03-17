// import 'package:flutter/material.dart';

class SkillChartData {
  final String skillId;
  final String skillLabel;
  final String domain;
  final String moduleId;
  final String status; // active | mastered | paused
  final List<AccuracyPoint> points;
  final double currentAccuracy;
  final double averageAccuracy;
  final int totalSessions;

  SkillChartData({
    required this.skillId,
    required this.skillLabel,
    required this.domain,
    required this.moduleId,
    required this.status,
    required this.points,
    required this.currentAccuracy,
    required this.averageAccuracy,
    required this.totalSessions,
  });
}

class AccuracyPoint {
  final int sessionIndex;
  final double accuracy;
  final DateTime date;

  AccuracyPoint({
    required this.sessionIndex,
    required this.accuracy,
    required this.date,
  });
}
