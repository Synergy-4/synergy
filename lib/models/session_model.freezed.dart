// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionResult {

 int get id;@JsonKey(name: 'child_id') int get childId;@JsonKey(name: 'activity_type') String get activityType;@JsonKey(name: 'accuracy_score') double get accuracyScore;@JsonKey(name: 'correct_count') int? get correctCount;@JsonKey(name: 'prompted_count') int? get promptedCount;@JsonKey(name: 'incorrect_count') int? get incorrectCount;@JsonKey(name: 'duration_seconds') int? get durationSeconds; String get status;// "completed", "partial"
@JsonKey(name: 'played_at') DateTime get playedAt; String? get notes;
/// Create a copy of SessionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionResultCopyWith<SessionResult> get copyWith => _$SessionResultCopyWithImpl<SessionResult>(this as SessionResult, _$identity);

  /// Serializes this SessionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.accuracyScore, accuracyScore) || other.accuracyScore == accuracyScore)&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount)&&(identical(other.promptedCount, promptedCount) || other.promptedCount == promptedCount)&&(identical(other.incorrectCount, incorrectCount) || other.incorrectCount == incorrectCount)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.status, status) || other.status == status)&&(identical(other.playedAt, playedAt) || other.playedAt == playedAt)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,childId,activityType,accuracyScore,correctCount,promptedCount,incorrectCount,durationSeconds,status,playedAt,notes);

@override
String toString() {
  return 'SessionResult(id: $id, childId: $childId, activityType: $activityType, accuracyScore: $accuracyScore, correctCount: $correctCount, promptedCount: $promptedCount, incorrectCount: $incorrectCount, durationSeconds: $durationSeconds, status: $status, playedAt: $playedAt, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $SessionResultCopyWith<$Res>  {
  factory $SessionResultCopyWith(SessionResult value, $Res Function(SessionResult) _then) = _$SessionResultCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'activity_type') String activityType,@JsonKey(name: 'accuracy_score') double accuracyScore,@JsonKey(name: 'correct_count') int? correctCount,@JsonKey(name: 'prompted_count') int? promptedCount,@JsonKey(name: 'incorrect_count') int? incorrectCount,@JsonKey(name: 'duration_seconds') int? durationSeconds, String status,@JsonKey(name: 'played_at') DateTime playedAt, String? notes
});




}
/// @nodoc
class _$SessionResultCopyWithImpl<$Res>
    implements $SessionResultCopyWith<$Res> {
  _$SessionResultCopyWithImpl(this._self, this._then);

  final SessionResult _self;
  final $Res Function(SessionResult) _then;

/// Create a copy of SessionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? childId = null,Object? activityType = null,Object? accuracyScore = null,Object? correctCount = freezed,Object? promptedCount = freezed,Object? incorrectCount = freezed,Object? durationSeconds = freezed,Object? status = null,Object? playedAt = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,accuracyScore: null == accuracyScore ? _self.accuracyScore : accuracyScore // ignore: cast_nullable_to_non_nullable
as double,correctCount: freezed == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int?,promptedCount: freezed == promptedCount ? _self.promptedCount : promptedCount // ignore: cast_nullable_to_non_nullable
as int?,incorrectCount: freezed == incorrectCount ? _self.incorrectCount : incorrectCount // ignore: cast_nullable_to_non_nullable
as int?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,playedAt: null == playedAt ? _self.playedAt : playedAt // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionResult].
extension SessionResultPatterns on SessionResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionResult value)  $default,){
final _that = this;
switch (_that) {
case _SessionResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionResult value)?  $default,){
final _that = this;
switch (_that) {
case _SessionResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_type')  String activityType, @JsonKey(name: 'accuracy_score')  double accuracyScore, @JsonKey(name: 'correct_count')  int? correctCount, @JsonKey(name: 'prompted_count')  int? promptedCount, @JsonKey(name: 'incorrect_count')  int? incorrectCount, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  String status, @JsonKey(name: 'played_at')  DateTime playedAt,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionResult() when $default != null:
return $default(_that.id,_that.childId,_that.activityType,_that.accuracyScore,_that.correctCount,_that.promptedCount,_that.incorrectCount,_that.durationSeconds,_that.status,_that.playedAt,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_type')  String activityType, @JsonKey(name: 'accuracy_score')  double accuracyScore, @JsonKey(name: 'correct_count')  int? correctCount, @JsonKey(name: 'prompted_count')  int? promptedCount, @JsonKey(name: 'incorrect_count')  int? incorrectCount, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  String status, @JsonKey(name: 'played_at')  DateTime playedAt,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _SessionResult():
return $default(_that.id,_that.childId,_that.activityType,_that.accuracyScore,_that.correctCount,_that.promptedCount,_that.incorrectCount,_that.durationSeconds,_that.status,_that.playedAt,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_type')  String activityType, @JsonKey(name: 'accuracy_score')  double accuracyScore, @JsonKey(name: 'correct_count')  int? correctCount, @JsonKey(name: 'prompted_count')  int? promptedCount, @JsonKey(name: 'incorrect_count')  int? incorrectCount, @JsonKey(name: 'duration_seconds')  int? durationSeconds,  String status, @JsonKey(name: 'played_at')  DateTime playedAt,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _SessionResult() when $default != null:
return $default(_that.id,_that.childId,_that.activityType,_that.accuracyScore,_that.correctCount,_that.promptedCount,_that.incorrectCount,_that.durationSeconds,_that.status,_that.playedAt,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionResult implements SessionResult {
  const _SessionResult({required this.id, @JsonKey(name: 'child_id') required this.childId, @JsonKey(name: 'activity_type') required this.activityType, @JsonKey(name: 'accuracy_score') required this.accuracyScore, @JsonKey(name: 'correct_count') this.correctCount, @JsonKey(name: 'prompted_count') this.promptedCount, @JsonKey(name: 'incorrect_count') this.incorrectCount, @JsonKey(name: 'duration_seconds') this.durationSeconds, required this.status, @JsonKey(name: 'played_at') required this.playedAt, this.notes});
  factory _SessionResult.fromJson(Map<String, dynamic> json) => _$SessionResultFromJson(json);

@override final  int id;
@override@JsonKey(name: 'child_id') final  int childId;
@override@JsonKey(name: 'activity_type') final  String activityType;
@override@JsonKey(name: 'accuracy_score') final  double accuracyScore;
@override@JsonKey(name: 'correct_count') final  int? correctCount;
@override@JsonKey(name: 'prompted_count') final  int? promptedCount;
@override@JsonKey(name: 'incorrect_count') final  int? incorrectCount;
@override@JsonKey(name: 'duration_seconds') final  int? durationSeconds;
@override final  String status;
// "completed", "partial"
@override@JsonKey(name: 'played_at') final  DateTime playedAt;
@override final  String? notes;

/// Create a copy of SessionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionResultCopyWith<_SessionResult> get copyWith => __$SessionResultCopyWithImpl<_SessionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.accuracyScore, accuracyScore) || other.accuracyScore == accuracyScore)&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount)&&(identical(other.promptedCount, promptedCount) || other.promptedCount == promptedCount)&&(identical(other.incorrectCount, incorrectCount) || other.incorrectCount == incorrectCount)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.status, status) || other.status == status)&&(identical(other.playedAt, playedAt) || other.playedAt == playedAt)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,childId,activityType,accuracyScore,correctCount,promptedCount,incorrectCount,durationSeconds,status,playedAt,notes);

@override
String toString() {
  return 'SessionResult(id: $id, childId: $childId, activityType: $activityType, accuracyScore: $accuracyScore, correctCount: $correctCount, promptedCount: $promptedCount, incorrectCount: $incorrectCount, durationSeconds: $durationSeconds, status: $status, playedAt: $playedAt, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$SessionResultCopyWith<$Res> implements $SessionResultCopyWith<$Res> {
  factory _$SessionResultCopyWith(_SessionResult value, $Res Function(_SessionResult) _then) = __$SessionResultCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'activity_type') String activityType,@JsonKey(name: 'accuracy_score') double accuracyScore,@JsonKey(name: 'correct_count') int? correctCount,@JsonKey(name: 'prompted_count') int? promptedCount,@JsonKey(name: 'incorrect_count') int? incorrectCount,@JsonKey(name: 'duration_seconds') int? durationSeconds, String status,@JsonKey(name: 'played_at') DateTime playedAt, String? notes
});




}
/// @nodoc
class __$SessionResultCopyWithImpl<$Res>
    implements _$SessionResultCopyWith<$Res> {
  __$SessionResultCopyWithImpl(this._self, this._then);

  final _SessionResult _self;
  final $Res Function(_SessionResult) _then;

/// Create a copy of SessionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? childId = null,Object? activityType = null,Object? accuracyScore = null,Object? correctCount = freezed,Object? promptedCount = freezed,Object? incorrectCount = freezed,Object? durationSeconds = freezed,Object? status = null,Object? playedAt = null,Object? notes = freezed,}) {
  return _then(_SessionResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,accuracyScore: null == accuracyScore ? _self.accuracyScore : accuracyScore // ignore: cast_nullable_to_non_nullable
as double,correctCount: freezed == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int?,promptedCount: freezed == promptedCount ? _self.promptedCount : promptedCount // ignore: cast_nullable_to_non_nullable
as int?,incorrectCount: freezed == incorrectCount ? _self.incorrectCount : incorrectCount // ignore: cast_nullable_to_non_nullable
as int?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,playedAt: null == playedAt ? _self.playedAt : playedAt // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
