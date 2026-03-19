// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_record_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionRecordRequest {

@JsonKey(name: 'game_types') List<String> get gameTypes; Map<String, dynamic> get scores;@JsonKey(name: 'parent_rating') int get parentRating; bool get completed;@JsonKey(name: 'duration_seconds') int get durationSeconds;@JsonKey(name: 'child_id') int get childId;@JsonKey(name: 'activity_id') int? get activityId;
/// Create a copy of SessionRecordRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionRecordRequestCopyWith<SessionRecordRequest> get copyWith => _$SessionRecordRequestCopyWithImpl<SessionRecordRequest>(this as SessionRecordRequest, _$identity);

  /// Serializes this SessionRecordRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionRecordRequest&&const DeepCollectionEquality().equals(other.gameTypes, gameTypes)&&const DeepCollectionEquality().equals(other.scores, scores)&&(identical(other.parentRating, parentRating) || other.parentRating == parentRating)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.activityId, activityId) || other.activityId == activityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(gameTypes),const DeepCollectionEquality().hash(scores),parentRating,completed,durationSeconds,childId,activityId);

@override
String toString() {
  return 'SessionRecordRequest(gameTypes: $gameTypes, scores: $scores, parentRating: $parentRating, completed: $completed, durationSeconds: $durationSeconds, childId: $childId, activityId: $activityId)';
}


}

/// @nodoc
abstract mixin class $SessionRecordRequestCopyWith<$Res>  {
  factory $SessionRecordRequestCopyWith(SessionRecordRequest value, $Res Function(SessionRecordRequest) _then) = _$SessionRecordRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'game_types') List<String> gameTypes, Map<String, dynamic> scores,@JsonKey(name: 'parent_rating') int parentRating, bool completed,@JsonKey(name: 'duration_seconds') int durationSeconds,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'activity_id') int? activityId
});




}
/// @nodoc
class _$SessionRecordRequestCopyWithImpl<$Res>
    implements $SessionRecordRequestCopyWith<$Res> {
  _$SessionRecordRequestCopyWithImpl(this._self, this._then);

  final SessionRecordRequest _self;
  final $Res Function(SessionRecordRequest) _then;

/// Create a copy of SessionRecordRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameTypes = null,Object? scores = null,Object? parentRating = null,Object? completed = null,Object? durationSeconds = null,Object? childId = null,Object? activityId = freezed,}) {
  return _then(_self.copyWith(
gameTypes: null == gameTypes ? _self.gameTypes : gameTypes // ignore: cast_nullable_to_non_nullable
as List<String>,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,parentRating: null == parentRating ? _self.parentRating : parentRating // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionRecordRequest].
extension SessionRecordRequestPatterns on SessionRecordRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionRecordRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionRecordRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionRecordRequest value)  $default,){
final _that = this;
switch (_that) {
case _SessionRecordRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionRecordRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SessionRecordRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'game_types')  List<String> gameTypes,  Map<String, dynamic> scores, @JsonKey(name: 'parent_rating')  int parentRating,  bool completed, @JsonKey(name: 'duration_seconds')  int durationSeconds, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_id')  int? activityId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionRecordRequest() when $default != null:
return $default(_that.gameTypes,_that.scores,_that.parentRating,_that.completed,_that.durationSeconds,_that.childId,_that.activityId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'game_types')  List<String> gameTypes,  Map<String, dynamic> scores, @JsonKey(name: 'parent_rating')  int parentRating,  bool completed, @JsonKey(name: 'duration_seconds')  int durationSeconds, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_id')  int? activityId)  $default,) {final _that = this;
switch (_that) {
case _SessionRecordRequest():
return $default(_that.gameTypes,_that.scores,_that.parentRating,_that.completed,_that.durationSeconds,_that.childId,_that.activityId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'game_types')  List<String> gameTypes,  Map<String, dynamic> scores, @JsonKey(name: 'parent_rating')  int parentRating,  bool completed, @JsonKey(name: 'duration_seconds')  int durationSeconds, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_id')  int? activityId)?  $default,) {final _that = this;
switch (_that) {
case _SessionRecordRequest() when $default != null:
return $default(_that.gameTypes,_that.scores,_that.parentRating,_that.completed,_that.durationSeconds,_that.childId,_that.activityId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionRecordRequest implements SessionRecordRequest {
  const _SessionRecordRequest({@JsonKey(name: 'game_types') required final  List<String> gameTypes, required final  Map<String, dynamic> scores, @JsonKey(name: 'parent_rating') required this.parentRating, required this.completed, @JsonKey(name: 'duration_seconds') required this.durationSeconds, @JsonKey(name: 'child_id') required this.childId, @JsonKey(name: 'activity_id') required this.activityId}): _gameTypes = gameTypes,_scores = scores;
  factory _SessionRecordRequest.fromJson(Map<String, dynamic> json) => _$SessionRecordRequestFromJson(json);

 final  List<String> _gameTypes;
@override@JsonKey(name: 'game_types') List<String> get gameTypes {
  if (_gameTypes is EqualUnmodifiableListView) return _gameTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gameTypes);
}

 final  Map<String, dynamic> _scores;
@override Map<String, dynamic> get scores {
  if (_scores is EqualUnmodifiableMapView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_scores);
}

@override@JsonKey(name: 'parent_rating') final  int parentRating;
@override final  bool completed;
@override@JsonKey(name: 'duration_seconds') final  int durationSeconds;
@override@JsonKey(name: 'child_id') final  int childId;
@override@JsonKey(name: 'activity_id') final  int? activityId;

/// Create a copy of SessionRecordRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionRecordRequestCopyWith<_SessionRecordRequest> get copyWith => __$SessionRecordRequestCopyWithImpl<_SessionRecordRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionRecordRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionRecordRequest&&const DeepCollectionEquality().equals(other._gameTypes, _gameTypes)&&const DeepCollectionEquality().equals(other._scores, _scores)&&(identical(other.parentRating, parentRating) || other.parentRating == parentRating)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.activityId, activityId) || other.activityId == activityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gameTypes),const DeepCollectionEquality().hash(_scores),parentRating,completed,durationSeconds,childId,activityId);

@override
String toString() {
  return 'SessionRecordRequest(gameTypes: $gameTypes, scores: $scores, parentRating: $parentRating, completed: $completed, durationSeconds: $durationSeconds, childId: $childId, activityId: $activityId)';
}


}

/// @nodoc
abstract mixin class _$SessionRecordRequestCopyWith<$Res> implements $SessionRecordRequestCopyWith<$Res> {
  factory _$SessionRecordRequestCopyWith(_SessionRecordRequest value, $Res Function(_SessionRecordRequest) _then) = __$SessionRecordRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'game_types') List<String> gameTypes, Map<String, dynamic> scores,@JsonKey(name: 'parent_rating') int parentRating, bool completed,@JsonKey(name: 'duration_seconds') int durationSeconds,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'activity_id') int? activityId
});




}
/// @nodoc
class __$SessionRecordRequestCopyWithImpl<$Res>
    implements _$SessionRecordRequestCopyWith<$Res> {
  __$SessionRecordRequestCopyWithImpl(this._self, this._then);

  final _SessionRecordRequest _self;
  final $Res Function(_SessionRecordRequest) _then;

/// Create a copy of SessionRecordRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameTypes = null,Object? scores = null,Object? parentRating = null,Object? completed = null,Object? durationSeconds = null,Object? childId = null,Object? activityId = freezed,}) {
  return _then(_SessionRecordRequest(
gameTypes: null == gameTypes ? _self._gameTypes : gameTypes // ignore: cast_nullable_to_non_nullable
as List<String>,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,parentRating: null == parentRating ? _self.parentRating : parentRating // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
