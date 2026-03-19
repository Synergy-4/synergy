import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/progress_provider.dart';
import '../../providers/active_child_provider.dart';
import '../../providers/settings_provider.dart';
// import '../../providers/children_list_provider.dart';
// import '../parent/child_form_screen.dart';
import 'skill_chart_card.dart';
import 'package:shimmer/shimmer.dart';
import 'package:go_router/go_router.dart';

import 'skill_chart_data.dart';

class ProgressScreen extends ConsumerStatefulWidget {
  const ProgressScreen({super.key});

  @override
  ConsumerState<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends ConsumerState<ProgressScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _domains = [
    'All',
    'Communication',
    'Social Interaction',
    'Cognitive Skills',
    'Emotional Regulation',
    'Daily Living',
  ];

  @override
  void initState() {
    super.initState();
    final initialDomain = ref.read(settingsProvider).progressDomainFilter;
    final initialIndex = _domains
        .indexOf(initialDomain)
        .clamp(0, _domains.length - 1);

    _tabController = TabController(
      length: _domains.length,
      vsync: this,
      initialIndex: initialIndex,
    );

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        ref
            .read(settingsProvider.notifier)
            .setProgressDomainFilter(_domains[_tabController.index]);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeChildId = ref.watch(activeChildProvider);
    final progressAsync = activeChildId != null
        ? ref.watch(progressProvider(activeChildId))
        : const AsyncValue<List<SkillChartData>>.data([]);

    // final childrenAsync = ref.watch(childrenListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Skill Progress'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: _domains.map((d) => Tab(text: d)).toList(),
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      body: (activeChildId == null)
          ? const _NoChildSelected()
          : progressAsync.when(
              data: (data) {
                return TabBarView(
                  controller: _tabController,
                  children: _domains.map((domain) {
                    final filteredData = domain == 'All'
                        ? data
                        : data.where((d) {
                            // Robust comparison: normalize both to lower case and handle potential snake_case from backend
                            final normalizedDataDomain = d.domain
                                .toLowerCase()
                                .replaceAll(' ', '_');
                            final normalizedTabDomain = domain
                                .toLowerCase()
                                .replaceAll(' ', '_');
                            return normalizedDataDomain == normalizedTabDomain;
                          }).toList();

                    if (filteredData.isEmpty) {
                      // Logic for 3 distinct empty states
                      if (data.isEmpty) {
                        // (1) No sessions at all or (2) no goals set

                        return _EmptyState(
                          icon: Icons.history_rounded,
                          title: 'No sessions recorded',
                          message: 'Start a game to begin tracking progress.',
                          actionText: 'Start a game',
                          onAction: () => context.go('/dashboard'),
                        );
                      } else {
                        // (3) Sessions exist but none in this domain
                        return _EmptyState(
                          icon: Icons.analytics_outlined,
                          title: 'No Data for $domain',
                          message:
                              'Keep playing sessions in the $domain area to see progress trends here.',
                        );
                      }
                    }

                    return ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: filteredData.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: SkillChartCard(data: filteredData[index]),
                      ),
                    );
                  }).toList(),
                );
              },
              loading: () => const _LoadingProgress(),
              error: (err, stack) => Center(child: Text('Error: $err')),
            ),
    );
  }
}

class _NoChildSelected extends StatelessWidget {
  const _NoChildSelected();

  @override
  Widget build(BuildContext context) {
    return const _EmptyState(
      icon: Icons.child_care_rounded,
      title: 'No Child Selected',
      message: 'Select a child profile to view their detailed skill progress.',
    );
  }
}

class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;
  final String? actionText;
  final VoidCallback? onAction;

  const _EmptyState({
    required this.icon,
    required this.title,
    required this.message,
    this.actionText,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: Colors.grey[300]),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
            if (actionText != null) ...[
              const SizedBox(height: 24),
              ElevatedButton(onPressed: onAction, child: Text(actionText!)),
            ],
          ],
        ),
      ),
    );
  }
}

class _LoadingProgress extends StatelessWidget {
  const _LoadingProgress();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: 300,
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
