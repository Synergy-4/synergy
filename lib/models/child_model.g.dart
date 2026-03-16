// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildModelImpl _$$ChildModelImplFromJson(Map<String, dynamic> json) =>
    _$ChildModelImpl(
      id: (json['id'] as num).toInt(),
      parentId: (json['parent_id'] as num).toInt(),
      name: json['name'] as String,
      ageInYears: (json['age_in_years'] as num).toInt(),
      interests: (json['interests'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      diagnosisNotes: json['diagnosis_notes'] as String?,
      goals: json['goals'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$ChildModelImplToJson(_$ChildModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'age_in_years': instance.ageInYears,
      'interests': instance.interests,
      'diagnosis_notes': instance.diagnosisNotes,
      'goals': instance.goals,
    };
