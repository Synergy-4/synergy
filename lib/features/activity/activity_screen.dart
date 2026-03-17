import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/activity_provider.dart';
import '../../providers/child_provider.dart';
import 'engine/sdui_renderer.dart';
import '../../core/theme/app_colors.dart';

class ActivityScreen extends ConsumerStatefulWidget {
  final String type;

  const ActivityScreen({super.key, required this.type});

  @override
  ConsumerState<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends ConsumerState<ActivityScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch appropriate activity based on the selected child
    Future.microtask(() async {
      final child = await ref.read(childStateProvider.future);
      if (child != null) {
        ref
            .read(activityStateProvider.notifier)
            .fetchNextActivity(child.id.toString(), gameType: widget.type);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final activityAsync = ref.watch(activityStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.type.replaceAll(RegExp(r'[^a-zA-Z0-9]'), ' ').toUpperCase(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: activityAsync.when(
        data: (payload) {
          if (payload == null) {
            return const Center(child: Text('No activity found.'));
          }
          return SduiRenderer(
            payload: payload,
            onActivityComplete: () {
              // Handle overall activity completion (e.g., save session, show final reward)
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Activity Complete! Saving session...'),
                ),
              );
              Navigator.pop(context);
            },
          );
        },
        loading: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(color: AppColors.primaryBlue),
              const SizedBox(height: 24),
              Text(
                'Personalizing your adventure...',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        error: (error, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 60,
                  color: AppColors.error,
                ),
                const SizedBox(height: 16),
                Text(
                  'Oops! Something went wrong.',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(error.toString(), textAlign: TextAlign.center),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () async {
                    final child = await ref.read(childStateProvider.future);
                    if (child != null) {
                      ref
                          .read(activityStateProvider.notifier)
                          .fetchNextActivity(child.id.toString());
                    }
                  },
                  child: const Text('Try Again'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
