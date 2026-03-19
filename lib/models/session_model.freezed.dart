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

 int get id;@JsonKey(name: 'child_id') int get childId;@JsonKey(name: 'activity_id') int? get activityId;@JsonKey(name: 'parent_rating') int? get parentRating;@JsonKey(name: 'duration_seconds') int? get durationSeconds;@JsonKey(name: 'game_types') List<String> get gameTypes;@JsonKey(name: 'scores') Map<String, dynamic> get scores;@JsonKey(name: 'notes') String? get notes; bool get completed;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of SessionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionResultCopyWith<SessionResult> get copyWith => _$SessionResultCopyWithImpl<SessionResult>(this as SessionResult, _$identity);

  /// Serializes this SessionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.parentRating, parentRating) || other.parentRating == parentRating)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&const DeepCollectionEquality().equals(other.gameTypes, gameTypes)&&const DeepCollectionEquality().equals(other.scores, scores)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,childId,activityId,parentRating,durationSeconds,const DeepCollectionEquality().hash(gameTypes),const DeepCollectionEquality().hash(scores),notes,completed,createdAt);

@override
String toString() {
  return 'SessionResult(id: $id, childId: $childId, activityId: $activityId, parentRating: $parentRating, durationSeconds: $durationSeconds, gameTypes: $gameTypes, scores: $scores, notes: $notes, completed: $completed, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SessionResultCopyWith<$Res>  {
  factory $SessionResultCopyWith(SessionResult value, $Res Function(SessionResult) _then) = _$SessionResultCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'activity_id') int? activityId,@JsonKey(name: 'parent_rating') int? parentRating,@JsonKey(name: 'duration_seconds') int? durationSeconds,@JsonKey(name: 'game_types') List<String> gameTypes,@JsonKey(name: 'scores') Map<String, dynamic> scores,@JsonKey(name: 'notes') String? notes, bool completed,@JsonKey(name: 'created_at') DateTime createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? childId = null,Object? activityId = freezed,Object? parentRating = freezed,Object? durationSeconds = freezed,Object? gameTypes = null,Object? scores = null,Object? notes = freezed,Object? completed = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,parentRating: freezed == parentRating ? _self.parentRating : parentRating // ignore: cast_nullable_to_non_nullable
as int?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,gameTypes: null == gameTypes ? _self.gameTypes : gameTypes // ignore: cast_nullable_to_non_nullable
as List<String>,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_id')  int? activityId, @JsonKey(name: 'parent_rating')  int? parentRating, @JsonKey(name: 'duration_seconds')  int? durationSeconds, @JsonKey(name: 'game_types')  List<String> gameTypes, @JsonKey(name: 'scores')  Map<String, dynamic> scores, @JsonKey(name: 'notes')  String? notes,  bool completed, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionResult() when $default != null:
return $default(_that.id,_that.childId,_that.activityId,_that.parentRating,_that.durationSeconds,_that.gameTypes,_that.scores,_that.notes,_that.completed,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_id')  int? activityId, @JsonKey(name: 'parent_rating')  int? parentRating, @JsonKey(name: 'duration_seconds')  int? durationSeconds, @JsonKey(name: 'game_types')  List<String> gameTypes, @JsonKey(name: 'scores')  Map<String, dynamic> scores, @JsonKey(name: 'notes')  String? notes,  bool completed, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SessionResult():
return $default(_that.id,_that.childId,_that.activityId,_that.parentRating,_that.durationSeconds,_that.gameTypes,_that.scores,_that.notes,_that.completed,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'activity_id')  int? activityId, @JsonKey(name: 'parent_rating')  int? parentRating, @JsonKey(name: 'duration_seconds')  int? durationSeconds, @JsonKey(name: 'game_types')  List<String> gameTypes, @JsonKey(name: 'scores')  Map<String, dynamic> scores, @JsonKey(name: 'notes')  String? notes,  bool completed, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SessionResult() when $default != null:
return $default(_that.id,_that.childId,_that.activityId,_that.parentRating,_that.durationSeconds,_that.gameTypes,_that.scores,_that.notes,_that.completed,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionResult extends SessionResult {
  const _SessionResult({required this.id, @JsonKey(name: 'child_id') required this.childId, @JsonKey(name: 'activity_id') this.activityId, @JsonKey(name: 'parent_rating') this.parentRating, @JsonKey(name: 'duration_seconds') this.durationSeconds, @JsonKey(name: 'game_types') final  List<String> gameTypes = const [], @JsonKey(name: 'scores') final  Map<String, dynamic> scores = const {}, @JsonKey(name: 'notes') this.notes, this.completed = true, @JsonKey(name: 'created_at') required this.createdAt}): _gameTypes = gameTypes,_scores = scores,super._();
  factory _SessionResult.fromJson(Map<String, dynamic> json) => _$SessionResultFromJson(json);

@override final  int id;
@override@JsonKey(name: 'child_id') final  int childId;
@override@JsonKey(name: 'activity_id') final  int? activityId;
@override@JsonKey(name: 'parent_rating') final  int? parentRating;
@override@JsonKey(name: 'duration_seconds') final  int? durationSeconds;
 final  List<String> _gameTypes;
@override@JsonKey(name: 'game_types') List<String> get gameTypes {
  if (_gameTypes is EqualUnmodifiableListView) return _gameTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gameTypes);
}

 final  Map<String, dynamic> _scores;
@override@JsonKey(name: 'scores') Map<String, dynamic> get scores {
  if (_scores is EqualUnmodifiableMapView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_scores);
}

@override@JsonKey(name: 'notes') final  String? notes;
@override@JsonKey() final  bool completed;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.parentRating, parentRating) || other.parentRating == parentRating)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&const DeepCollectionEquality().equals(other._gameTypes, _gameTypes)&&const DeepCollectionEquality().equals(other._scores, _scores)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,childId,activityId,parentRating,durationSeconds,const DeepCollectionEquality().hash(_gameTypes),const DeepCollectionEquality().hash(_scores),notes,completed,createdAt);

@override
String toString() {
  return 'SessionResult(id: $id, childId: $childId, activityId: $activityId, parentRating: $parentRating, durationSeconds: $durationSeconds, gameTypes: $gameTypes, scores: $scores, notes: $notes, completed: $completed, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SessionResultCopyWith<$Res> implements $SessionResultCopyWith<$Res> {
  factory _$SessionResultCopyWith(_SessionResult value, $Res Function(_SessionResult) _then) = __$SessionResultCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'activity_id') int? activityId,@JsonKey(name: 'parent_rating') int? parentRating,@JsonKey(name: 'duration_seconds') int? durationSeconds,@JsonKey(name: 'game_types') List<String> gameTypes,@JsonKey(name: 'scores') Map<String, dynamic> scores,@JsonKey(name: 'notes') String? notes, bool completed,@JsonKey(name: 'created_at') DateTime createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? childId = null,Object? activityId = freezed,Object? parentRating = freezed,Object? durationSeconds = freezed,Object? gameTypes = null,Object? scores = null,Object? notes = freezed,Object? completed = null,Object? createdAt = null,}) {
  return _then(_SessionResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,parentRating: freezed == parentRating ? _self.parentRating : parentRating // ignore: cast_nullable_to_non_nullable
as int?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,gameTypes: null == gameTypes ? _self._gameTypes : gameTypes // ignore: cast_nullable_to_non_nullable
as List<String>,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
