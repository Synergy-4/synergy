import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
class SessionResult with _$SessionResult {
  const factory SessionResult({
    required int id,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'activity_type') required String activityType,
    @JsonKey(name: 'accuracy_score') required double accuracyScore,
    @JsonKey(name: 'correct_count') int? correctCount,
    @JsonKey(name: 'prompted_count') int? promptedCount,
    @JsonKey(name: 'incorrect_count') int? incorrectCount,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    required String status, // "completed", "partial"
    @JsonKey(name: 'played_at') required DateTime playedAt,
    String? notes,
  }) = _SessionResult;

  factory SessionResult.fromJson(Map<String, dynamic> json) =>
      _$SessionResultFromJson(json);
}
