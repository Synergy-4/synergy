import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/children_list_provider.dart';
import '../../core/widgets/app_card.dart';
import 'progress_charts.dart';

class ParentPortalScreen extends ConsumerStatefulWidget {
  const ParentPortalScreen({super.key});

  @override
  ConsumerState<ParentPortalScreen> createState() => _ParentPortalScreenState();
}

class _ParentPortalScreenState extends ConsumerState<ParentPortalScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final childrenAsync = ref.watch(childrenListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _currentIndex == 0
              ? 'Progress'
              : _currentIndex == 1
              ? 'Children'
              : 'Profile',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: _currentIndex == 0
          ? const ProgressCharts()
          : _currentIndex == 1
          ? childrenAsync.when(
              data: (children) => children.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.child_care_outlined,
                            size: 64,
                            color: AppColors.textSecondary,
                          ),
                          const SizedBox(height: 16),
                          const Text('No children added yet'),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () => context.push('/parent/add-child'),
                            child: const Text('Add your first child'),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: children.length,
                      itemBuilder: (context, index) {
                        final child = children[index];
                        return AppCard(
                          // margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(16),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: AppColors.primaryBlue
                                  .withOpacity(0.1),
                              child: const Icon(
                                Icons.person,
                                color: AppColors.primaryBlue,
                              ),
                            ),
                            title: Text(
                              child.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              '${child.interests.take(2).join(", ")}${child.interests.length > 2 ? "..." : ""}',
                            ),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () {
                              // Navigate to child details
                            },
                          ),
                        );
                      },
                    ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('Error: $err')),
            )
          : const Center(child: Text('Profile Settings')),
      floatingActionButton: _currentIndex == 1
          ? FloatingActionButton.extended(
              onPressed: () => context.push('/parent/add-child'),
              label: const Text('Add Child'),
              icon: const Icon(Icons.add),
              backgroundColor: AppColors.primaryBlue,
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.primaryBlue,
        unselectedItemColor: AppColors.textSecondary,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care_outlined),
            label: 'Children',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
