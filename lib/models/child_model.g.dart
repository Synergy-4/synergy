// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChildModel _$ChildModelFromJson(Map<String, dynamic> json) => _ChildModel(
  id: (json['id'] as num).toInt(),
  parentId: (json['parent_id'] as num).toInt(),
  name: json['name'] as String,
  dateOfBirth: json['date_of_birth'] as String? ?? '',
  interests:
      (json['interests'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  diagnosisNotes: json['diagnosis_notes'] as String?,
  goals: json['goals'] as List<dynamic>? ?? const [],
);

Map<String, dynamic> _$ChildModelToJson(_ChildModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'date_of_birth': instance.dateOfBirth,
      'interests': instance.interests,
      'diagnosis_notes': instance.diagnosisNotes,
      'goals': instance.goals,
    };
