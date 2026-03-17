import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/streak_provider.dart';
import '../../providers/active_child_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/app_card.dart';
import 'package:lottie/lottie.dart';

class StreakCard extends ConsumerWidget {
  const StreakCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChildId = ref.watch(activeChildProvider);
    final streak = activeChildId != null
        ? ref.watch(currentStreakProvider(activeChildId))
        : 0;

    return AppCard(
      padding: const EdgeInsets.all(24),
      color: AppColors.softBlue,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$streak Day Streak!',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryBlue,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  streak > 0 
                    ? 'Keep up the great work!' 
                    : 'Start your first activity today!',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 80,
            height: 80,
            child: Lottie.network(
              'https://assets10.lottiefiles.com/packages/lf20_mkm9nzre.json', // Fire animation
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.whatshot_rounded,
                size: 48,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
