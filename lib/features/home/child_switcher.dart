import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/children_list_provider.dart';
import '../../providers/active_child_provider.dart';
import '../../core/theme/app_colors.dart';

class ChildSwitcher extends ConsumerWidget {
  const ChildSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final childrenAsync = ref.watch(childrenListProvider);
    final activeId = ref.watch(activeChildProvider);

    return childrenAsync.when(
      data: (children) {
        if (children.isEmpty) return const SizedBox.shrink();

        return SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: children.length,
            itemBuilder: (context, index) {
              final child = children[index];
              final isSelected = child.id == activeId;

              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  child: ChoiceChip(
                    avatar: isSelected ? null : Text('👶', style: const TextStyle(fontSize: 16)),
                    label: Text(child.name),
                    selected: isSelected,
                    onSelected: (selected) {
                      if (selected) {
                        ref.read(activeChildProvider.notifier).setActiveChild(child.id);
                      }
                    },
                    selectedColor: AppColors.primaryBlue,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : AppColors.textPrimary,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide(
                      color: isSelected ? AppColors.primaryBlue : Colors.grey[300]!,
                      width: 1,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}
