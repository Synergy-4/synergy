import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/child_model.dart';
import '../core/database_service.dart';

part 'child_provider.g.dart';

@riverpod
class ChildState extends _$ChildState {
  @override
  FutureOr<ChildModel?> build() async {
    final children = await DatabaseService.instance.getChildren();
    if (children.isNotEmpty) {
      return children.first;
    }
    return null;
  }

  void selectChild(ChildModel child) {
    state = AsyncData(child);
  }

  Future<void> refreshChildren() async {
    state = const AsyncLoading();
    try {
      final children = await DatabaseService.instance.getChildren();
      if (children.isNotEmpty) {
        state = AsyncData(children.first);
      } else {
        state = const AsyncData(null);
      }
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
