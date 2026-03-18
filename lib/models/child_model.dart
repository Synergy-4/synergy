import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_model.freezed.dart';
part 'child_model.g.dart';

@freezed
abstract class ChildModel with _$ChildModel {
  const factory ChildModel({
    required int id,
    @JsonKey(name: 'parent_id') required int parentId,
    required String name,
    @JsonKey(name: 'date_of_birth') @Default('') String dateOfBirth,
    @Default([]) List<String> interests,
    @JsonKey(name: 'diagnosis_notes') String? diagnosisNotes,
    @Default([]) List<dynamic> goals,
  }) = _ChildModel;

  factory ChildModel.fromJson(Map<String, dynamic> json) =>
      _$ChildModelFromJson(json);
}
