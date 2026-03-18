import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'sessions_provider.dart';
import '../features/home/streak_calculator.dart';
import '../providers/active_child_provider.dart';

part 'streak_provider.g.dart';

@riverpod
int currentStreak(Ref ref, int childId) {
  final sessionsAsync = ref.watch(sessionsProvider(childId));

  return sessionsAsync.maybeWhen(
    data: (sessions) => StreakCalculator.calculateStreak(sessions),
    orElse: () => 0,
  );
}
