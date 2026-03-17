import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/child_model.dart';
import '../core/database_service.dart';
import '../core/utility.dart';

part 'children_list_provider.g.dart';

@riverpod
class ChildrenList extends _$ChildrenList {
  @override
  FutureOr<List<ChildModel>> build() async {
    // 1. Try to load from local DB first
    final localChildren = await DatabaseService.instance.getChildren();

    // 2. Refresh from API in the background
    _refreshFromApi();

    return localChildren;
  }

  Future<void> _refreshFromApi() async {
    final result = await ApiClient.instance.getList('/children');

    if (result is ApiSuccess) {
      final List<dynamic> data = result.data;
      final children = data.map((json) => ChildModel.fromJson(json)).toList();

      // Update local DB
      await DatabaseService.instance.saveChildren(children);

      // Update state
      state = AsyncData(children);
    }
  }

  Future<void> addChild({
    required String name,
    required String dateOfBirth,
    required List<String> interests,
    String? diagnosisNotes,
  }) async {
    final body = {
      'name': name,
      'date_of_birth': dateOfBirth,
      'interests': interests,
      'diagnosis_notes': diagnosisNotes,
    };

    final result = await ApiClient.instance.postJson('/children', body: body);

    if (result is ApiSuccess) {
      // Refresh the whole list after adding
      await _refreshFromApi();
    } else if (result is ApiFailure) {
      throw result;
    }
  }
}
