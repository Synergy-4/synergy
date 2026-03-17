import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../models/session_model.dart';
import 'child_switcher.dart';
import 'streak_card.dart';
import 'start_activity_card.dart';
import 'recent_sessions_list.dart';
import '../../providers/active_child_provider.dart';
import '../../providers/sessions_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChildId = ref.watch(activeChildProvider);
    final sessionsAsync = activeChildId != null
        ? ref.watch(sessionsProvider(activeChildId))
        : const AsyncValue.data(<SessionResult>[]);

    return Scaffold(
      appBar: AppBar(title: const Text('Synergy Dashboard'), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () async {
          if (activeChildId != null) {
            return ref.refresh(sessionsProvider(activeChildId).future);
          }
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning,',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  Text(
                    'Damilola', // Mock name, could be from auth
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const ChildSwitcher(),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: StreakCard(),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: StartActivityCard(
                onTap: () => context.go('/child/dashboard'),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: sessionsAsync.when(
                data: (sessions) => RecentSessionsList(sessions: sessions),
                loading: () => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: (err, stack) =>
                    Center(child: Text('Error loading sessions: $err')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
