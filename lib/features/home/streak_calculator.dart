import 'package:flutter/material.dart';
import '../../models/session_model.dart';

class StreakCalculator {
  /// Calculates the current streak of consecutive days with at least one completed session.
  /// 
  /// Logic:
  /// 1. Get unique dates of completed sessions, sorted descending.
  /// 2. If no completed sessions, streak is 0.
  /// 3. If the most recent completed session is not today and not yesterday, streak is 0.
  /// 4. Count back consecutive days.
  static int calculateStreak(List<SessionResult> sessions) {
    if (sessions.isEmpty) return 0;

    // Get unique dates with at least one completed session
    final completedDates = sessions
        .where((s) => s.status == 'completed')
        .map((s) => DateUtils.dateOnly(s.playedAt))
        .toSet()
        .toList()
      ..sort((a, b) => b.compareTo(a)); // descending

    if (completedDates.isEmpty) return 0;

    final today = DateUtils.dateOnly(DateTime.now());
    final yesterday = today.subtract(const Duration(days: 1));

    // If the latest activity isn't today or yesterday, the streak is broken
    if (completedDates.first != today && completedDates.first != yesterday) {
      return 0;
    }

    int streak = 1;
    for (int i = 1; i < completedDates.length; i++) {
      final diff = completedDates[i - 1].difference(completedDates[i]).inDays;
      if (diff == 1) {
        streak++;
      } else if (diff > 1) {
        break;
      }
    }
    return streak;
  }
}
