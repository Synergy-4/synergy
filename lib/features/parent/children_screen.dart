import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/children_list_provider.dart';
import '../../core/widgets/app_card.dart';
import '../../providers/active_child_provider.dart';

class ChildrenScreen extends ConsumerWidget {
  const ChildrenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final childrenAsync = ref.watch(childrenListProvider);
    final activeId = ref.watch(activeChildProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('My Children'), centerTitle: true),
      body: childrenAsync.when(
        data: (children) => children.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.child_care_outlined,
                      size: 80,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'No children added yet',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () => context.push('/parent/child-form'),
                      icon: const Icon(Icons.add),
                      label: const Text('Add Your First Child'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: children.length,
                itemBuilder: (context, index) {
                  final child = children[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Dismissible(
                      key: Key(child.id.toString()),
                      background: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 20),
                        color: Colors.blue,
                        child: const Icon(Icons.edit, color: Colors.white),
                      ),
                      secondaryBackground: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        color: Colors.red,
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      confirmDismiss: (direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          context.push('/parent/child-form', extra: child);
                          return false;
                        } else {
                          return await _showDeleteConfirmation(
                            context,
                            child.name,
                          );
                        }
                      },
                      onDismissed: (_) {
                        // ref
                        //     .read(childrenListProvider.notifier)
                        //     .deleteChild(child.id);
                      },
                      child: AppCard(
                        padding: const EdgeInsets.all(16),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.primaryBlue.withOpacity(
                              0.1,
                            ),
                            child: Text(
                              '👶', // Default avatar for now
                              style: const TextStyle(fontSize: 32),
                            ),
                          ),
                          title: Row(
                            children: [
                              Text(
                                child.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              if (child.id == activeId) ...[
                                const SizedBox(width: 8),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: AppColors.primaryBlue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ],
                          ),
                          subtitle: Text(
                            '${child.interests.take(3).join(", ")}${child.interests.length > 3 ? "..." : ""}',
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () =>
                              context.push('/parent/child-form', extra: child),
                        ),
                      ),
                    ),
                  );
                },
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/parent/child-form'),
        label: const Text('Add Child'),
        icon: const Icon(Icons.add),
      ),
    );
  }

  Future<bool?> _showDeleteConfirmation(BuildContext context, String name) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Profile'),
        content: Text('Are you sure you want to delete $name\'s profile?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
