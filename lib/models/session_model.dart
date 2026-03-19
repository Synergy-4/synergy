import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
abstract class SessionResult with _$SessionResult {
  const SessionResult._();

  const factory SessionResult({
    required int id,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'activity_id') int? activityId,
    @JsonKey(name: 'parent_rating') int? parentRating,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    @JsonKey(name: 'game_types') @Default([]) List<String> gameTypes,
    @JsonKey(name: 'scores') @Default({}) Map<String, dynamic> scores,
    @JsonKey(name: 'notes') String? notes,
    @Default(true) bool completed,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _SessionResult;

  String get activityType => gameTypes.isNotEmpty ? gameTypes.first.toString() : 'Activity $activityId';
  double get accuracyScore => (scores['accuracy_score'] as num?)?.toDouble() ?? 0.0;
  String get status => completed ? 'completed' : 'partial';
  DateTime get playedAt => createdAt;
  
  int? get correctCount => (scores['correct_count'] as num?)?.toInt() ?? (scores['correct'] as num?)?.toInt();
  int? get promptedCount => (scores['prompted_count'] as num?)?.toInt() ?? (scores['prompted'] as num?)?.toInt();
  int? get incorrectCount => (scores['incorrect_count'] as num?)?.toInt() ?? (scores['incorrect'] as num?)?.toInt();

  factory SessionResult.fromJson(Map<String, dynamic> json) =>
      _$SessionResultFromJson(json);
}
