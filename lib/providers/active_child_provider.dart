import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'settings_provider.dart';

part 'active_child_provider.g.dart';

@riverpod
class ActiveChild extends _$ActiveChild {
  @override
  int? build() {
    final storage = ref.watch(settingsStorageProvider);
    return storage.activeChildId;
  }

  void setActiveChild(int? childId) {
    state = childId;
    ref.read(settingsStorageProvider).setActiveChildId(childId);
  }
}
