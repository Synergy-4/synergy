import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/activity_provider.dart';
import '../../providers/active_child_provider.dart';
import '../../providers/sessions_provider.dart';
import '../../models/session_record_request.dart';
import 'engine/sdui_renderer.dart';
import '../../core/theme/app_colors.dart';

class ActivityScreen extends ConsumerStatefulWidget {
  final String type;

  const ActivityScreen({super.key, required this.type});

  @override
  ConsumerState<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends ConsumerState<ActivityScreen> {
  DateTime? _startTime;

  @override
  void initState() {
    super.initState();
    _startTime = DateTime.now();
    // Fetch appropriate activity based on the selected child
    Future.microtask(() {
      final childId = ref.read(activeChildProvider);
      if (childId != null) {
        ref
            .read(activityStateProvider.notifier)
            .fetchNextActivity(childId.toString(), gameType: widget.type);
      } else {
        // Handle no active child
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No active child selected.')),
          );
          Navigator.pop(context);
        }
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
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(color: AppColors.primaryBlue),
                  const SizedBox(height: 24),
                  Text(
                    'Preparing your adventure...',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            );
          }
          return SduiRenderer(
            payload: payload,
            onActivityComplete: () async {
              final childId = ref.read(activeChildProvider);
              if (childId != null) {
                final durationSeconds = _startTime != null
                    ? DateTime.now().difference(_startTime!).inSeconds
                    : 0;

                final request = SessionRecordRequest(
                  gameTypes: [], // To be populated if game engine returns it
                  scores: {}, // To be populated if game engine returns it
                  parentRating: 0,
                  completed: true,
                  durationSeconds: durationSeconds,
                  childId: childId,
                  activityId: payload.activityId,
                );

                await recordSession(request);

                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Activity Complete! Session saved.'),
                    ),
                  );
                  Navigator.pop(context);
                }
              }
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
                  onPressed: () {
                    final childId = ref.read(activeChildProvider);
                    if (childId != null) {
                      ref
                          .read(activityStateProvider.notifier)
                          .fetchNextActivity(
                            childId.toString(),
                            gameType: widget.type,
                          );
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
