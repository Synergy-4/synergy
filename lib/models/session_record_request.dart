import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_record_request.freezed.dart';
part 'session_record_request.g.dart';

@freezed
abstract class SessionRecordRequest with _$SessionRecordRequest {
  const factory SessionRecordRequest({
    @JsonKey(name: 'game_types') required List<String> gameTypes,
    required Map<String, dynamic> scores,
    @JsonKey(name: 'parent_rating') required int parentRating,
    required bool completed,
    @JsonKey(name: 'duration_seconds') required int durationSeconds,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'activity_id') required int? activityId,
  }) = _SessionRecordRequest;

  factory SessionRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$SessionRecordRequestFromJson(json);
}
