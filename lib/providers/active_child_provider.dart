import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'settings_provider.dart';
import 'children_list_provider.dart';

part 'active_child_provider.g.dart';

@riverpod
class ActiveChild extends _$ActiveChild {
  @override
  int? build() {
    final storage = ref.watch(settingsStorageProvider);
    final storedId = storage.activeChildId;
    
    if (storedId != null) return storedId;

    // Default to first child if available
    final childrenAsync = ref.watch(childrenListProvider);
    return childrenAsync.whenOrNull(
      data: (list) => list.isNotEmpty ? list.first.id : null,
    );
  }

  void setActiveChild(int? childId) {
    state = childId;
    ref.read(settingsStorageProvider).setActiveChildId(childId);
  }
}
