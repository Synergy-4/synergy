// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionResult _$SessionResultFromJson(Map<String, dynamic> json) {
  return _SessionResult.fromJson(json);
}

/// @nodoc
mixin _$SessionResult {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_type')
  String get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'accuracy_score')
  double get accuracyScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_count')
  int? get correctCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'prompted_count')
  int? get promptedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incorrect_count')
  int? get incorrectCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // "completed", "partial"
  @JsonKey(name: 'played_at')
  DateTime get playedAt => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this SessionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionResultCopyWith<SessionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionResultCopyWith<$Res> {
  factory $SessionResultCopyWith(
    SessionResult value,
    $Res Function(SessionResult) then,
  ) = _$SessionResultCopyWithImpl<$Res, SessionResult>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'child_id') int childId,
    @JsonKey(name: 'activity_type') String activityType,
    @JsonKey(name: 'accuracy_score') double accuracyScore,
    @JsonKey(name: 'correct_count') int? correctCount,
    @JsonKey(name: 'prompted_count') int? promptedCount,
    @JsonKey(name: 'incorrect_count') int? incorrectCount,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    String status,
    @JsonKey(name: 'played_at') DateTime playedAt,
    String? notes,
  });
}

/// @nodoc
class _$SessionResultCopyWithImpl<$Res, $Val extends SessionResult>
    implements $SessionResultCopyWith<$Res> {
  _$SessionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? activityType = null,
    Object? accuracyScore = null,
    Object? correctCount = freezed,
    Object? promptedCount = freezed,
    Object? incorrectCount = freezed,
    Object? durationSeconds = freezed,
    Object? status = null,
    Object? playedAt = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            childId: null == childId
                ? _value.childId
                : childId // ignore: cast_nullable_to_non_nullable
                      as int,
            activityType: null == activityType
                ? _value.activityType
                : activityType // ignore: cast_nullable_to_non_nullable
                      as String,
            accuracyScore: null == accuracyScore
                ? _value.accuracyScore
                : accuracyScore // ignore: cast_nullable_to_non_nullable
                      as double,
            correctCount: freezed == correctCount
                ? _value.correctCount
                : correctCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            promptedCount: freezed == promptedCount
                ? _value.promptedCount
                : promptedCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            incorrectCount: freezed == incorrectCount
                ? _value.incorrectCount
                : incorrectCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            durationSeconds: freezed == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            playedAt: null == playedAt
                ? _value.playedAt
                : playedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionResultImplCopyWith<$Res>
    implements $SessionResultCopyWith<$Res> {
  factory _$$SessionResultImplCopyWith(
    _$SessionResultImpl value,
    $Res Function(_$SessionResultImpl) then,
  ) = __$$SessionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'child_id') int childId,
    @JsonKey(name: 'activity_type') String activityType,
    @JsonKey(name: 'accuracy_score') double accuracyScore,
    @JsonKey(name: 'correct_count') int? correctCount,
    @JsonKey(name: 'prompted_count') int? promptedCount,
    @JsonKey(name: 'incorrect_count') int? incorrectCount,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    String status,
    @JsonKey(name: 'played_at') DateTime playedAt,
    String? notes,
  });
}

/// @nodoc
class __$$SessionResultImplCopyWithImpl<$Res>
    extends _$SessionResultCopyWithImpl<$Res, _$SessionResultImpl>
    implements _$$SessionResultImplCopyWith<$Res> {
  __$$SessionResultImplCopyWithImpl(
    _$SessionResultImpl _value,
    $Res Function(_$SessionResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? activityType = null,
    Object? accuracyScore = null,
    Object? correctCount = freezed,
    Object? promptedCount = freezed,
    Object? incorrectCount = freezed,
    Object? durationSeconds = freezed,
    Object? status = null,
    Object? playedAt = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$SessionResultImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        childId: null == childId
            ? _value.childId
            : childId // ignore: cast_nullable_to_non_nullable
                  as int,
        activityType: null == activityType
            ? _value.activityType
            : activityType // ignore: cast_nullable_to_non_nullable
                  as String,
        accuracyScore: null == accuracyScore
            ? _value.accuracyScore
            : accuracyScore // ignore: cast_nullable_to_non_nullable
                  as double,
        correctCount: freezed == correctCount
            ? _value.correctCount
            : correctCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        promptedCount: freezed == promptedCount
            ? _value.promptedCount
            : promptedCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        incorrectCount: freezed == incorrectCount
            ? _value.incorrectCount
            : incorrectCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        durationSeconds: freezed == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        playedAt: null == playedAt
            ? _value.playedAt
            : playedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionResultImpl implements _SessionResult {
  const _$SessionResultImpl({
    required this.id,
    @JsonKey(name: 'child_id') required this.childId,
    @JsonKey(name: 'activity_type') required this.activityType,
    @JsonKey(name: 'accuracy_score') required this.accuracyScore,
    @JsonKey(name: 'correct_count') this.correctCount,
    @JsonKey(name: 'prompted_count') this.promptedCount,
    @JsonKey(name: 'incorrect_count') this.incorrectCount,
    @JsonKey(name: 'duration_seconds') this.durationSeconds,
    required this.status,
    @JsonKey(name: 'played_at') required this.playedAt,
    this.notes,
  });

  factory _$SessionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionResultImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'activity_type')
  final String activityType;
  @override
  @JsonKey(name: 'accuracy_score')
  final double accuracyScore;
  @override
  @JsonKey(name: 'correct_count')
  final int? correctCount;
  @override
  @JsonKey(name: 'prompted_count')
  final int? promptedCount;
  @override
  @JsonKey(name: 'incorrect_count')
  final int? incorrectCount;
  @override
  @JsonKey(name: 'duration_seconds')
  final int? durationSeconds;
  @override
  final String status;
  // "completed", "partial"
  @override
  @JsonKey(name: 'played_at')
  final DateTime playedAt;
  @override
  final String? notes;

  @override
  String toString() {
    return 'SessionResult(id: $id, childId: $childId, activityType: $activityType, accuracyScore: $accuracyScore, correctCount: $correctCount, promptedCount: $promptedCount, incorrectCount: $incorrectCount, durationSeconds: $durationSeconds, status: $status, playedAt: $playedAt, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.accuracyScore, accuracyScore) ||
                other.accuracyScore == accuracyScore) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount) &&
            (identical(other.promptedCount, promptedCount) ||
                other.promptedCount == promptedCount) &&
            (identical(other.incorrectCount, incorrectCount) ||
                other.incorrectCount == incorrectCount) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.playedAt, playedAt) ||
                other.playedAt == playedAt) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    childId,
    activityType,
    accuracyScore,
    correctCount,
    promptedCount,
    incorrectCount,
    durationSeconds,
    status,
    playedAt,
    notes,
  );

  /// Create a copy of SessionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionResultImplCopyWith<_$SessionResultImpl> get copyWith =>
      __$$SessionResultImplCopyWithImpl<_$SessionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionResultImplToJson(this);
  }
}

abstract class _SessionResult implements SessionResult {
  const factory _SessionResult({
    required final int id,
    @JsonKey(name: 'child_id') required final int childId,
    @JsonKey(name: 'activity_type') required final String activityType,
    @JsonKey(name: 'accuracy_score') required final double accuracyScore,
    @JsonKey(name: 'correct_count') final int? correctCount,
    @JsonKey(name: 'prompted_count') final int? promptedCount,
    @JsonKey(name: 'incorrect_count') final int? incorrectCount,
    @JsonKey(name: 'duration_seconds') final int? durationSeconds,
    required final String status,
    @JsonKey(name: 'played_at') required final DateTime playedAt,
    final String? notes,
  }) = _$SessionResultImpl;

  factory _SessionResult.fromJson(Map<String, dynamic> json) =
      _$SessionResultImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'activity_type')
  String get activityType;
  @override
  @JsonKey(name: 'accuracy_score')
  double get accuracyScore;
  @override
  @JsonKey(name: 'correct_count')
  int? get correctCount;
  @override
  @JsonKey(name: 'prompted_count')
  int? get promptedCount;
  @override
  @JsonKey(name: 'incorrect_count')
  int? get incorrectCount;
  @override
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds;
  @override
  String get status; // "completed", "partial"
  @override
  @JsonKey(name: 'played_at')
  DateTime get playedAt;
  @override
  String? get notes;

  /// Create a copy of SessionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionResultImplCopyWith<_$SessionResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
