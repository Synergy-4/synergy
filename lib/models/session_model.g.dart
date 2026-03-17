// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionResultImpl _$$SessionResultImplFromJson(Map<String, dynamic> json) =>
    _$SessionResultImpl(
      id: (json['id'] as num).toInt(),
      childId: (json['child_id'] as num).toInt(),
      activityType: json['activity_type'] as String,
      accuracyScore: (json['accuracy_score'] as num).toDouble(),
      correctCount: (json['correct_count'] as num?)?.toInt(),
      promptedCount: (json['prompted_count'] as num?)?.toInt(),
      incorrectCount: (json['incorrect_count'] as num?)?.toInt(),
      durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
      status: json['status'] as String,
      playedAt: DateTime.parse(json['played_at'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$SessionResultImplToJson(_$SessionResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'child_id': instance.childId,
      'activity_type': instance.activityType,
      'accuracy_score': instance.accuracyScore,
      'correct_count': instance.correctCount,
      'prompted_count': instance.promptedCount,
      'incorrect_count': instance.incorrectCount,
      'duration_seconds': instance.durationSeconds,
      'status': instance.status,
      'played_at': instance.playedAt.toIso8601String(),
      'notes': instance.notes,
    };
