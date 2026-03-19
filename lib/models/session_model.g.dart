// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionResult _$SessionResultFromJson(Map<String, dynamic> json) =>
    _SessionResult(
      id: (json['id'] as num).toInt(),
      childId: (json['child_id'] as num).toInt(),
      activityId: (json['activity_id'] as num?)?.toInt(),
      parentRating: (json['parent_rating'] as num?)?.toInt(),
      durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
      gameTypes:
          (json['game_types'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      scores: json['scores'] as Map<String, dynamic>? ?? const {},
      notes: json['notes'] as String?,
      completed: json['completed'] as bool? ?? true,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$SessionResultToJson(_SessionResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'child_id': instance.childId,
      'activity_id': instance.activityId,
      'parent_rating': instance.parentRating,
      'duration_seconds': instance.durationSeconds,
      'game_types': instance.gameTypes,
      'scores': instance.scores,
      'notes': instance.notes,
      'completed': instance.completed,
      'created_at': instance.createdAt.toIso8601String(),
    };
