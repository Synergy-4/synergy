// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_record_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionRecordRequest _$SessionRecordRequestFromJson(
  Map<String, dynamic> json,
) => _SessionRecordRequest(
  gameTypes: (json['game_types'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  scores: json['scores'] as Map<String, dynamic>,
  parentRating: (json['parent_rating'] as num).toInt(),
  completed: json['completed'] as bool,
  durationSeconds: (json['duration_seconds'] as num).toInt(),
  childId: (json['child_id'] as num).toInt(),
  activityId: (json['activity_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$SessionRecordRequestToJson(
  _SessionRecordRequest instance,
) => <String, dynamic>{
  'game_types': instance.gameTypes,
  'scores': instance.scores,
  'parent_rating': instance.parentRating,
  'completed': instance.completed,
  'duration_seconds': instance.durationSeconds,
  'child_id': instance.childId,
  'activity_id': instance.activityId,
};
