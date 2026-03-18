// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChildModel {

 int get id;@JsonKey(name: 'parent_id') int get parentId; String get name;@JsonKey(name: 'date_of_birth') String get dateOfBirth; List<String> get interests;@JsonKey(name: 'diagnosis_notes') String? get diagnosisNotes; List<dynamic> get goals;
/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildModelCopyWith<ChildModel> get copyWith => _$ChildModelCopyWithImpl<ChildModel>(this as ChildModel, _$identity);

  /// Serializes this ChildModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildModel&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&const DeepCollectionEquality().equals(other.interests, interests)&&(identical(other.diagnosisNotes, diagnosisNotes) || other.diagnosisNotes == diagnosisNotes)&&const DeepCollectionEquality().equals(other.goals, goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,dateOfBirth,const DeepCollectionEquality().hash(interests),diagnosisNotes,const DeepCollectionEquality().hash(goals));

@override
String toString() {
  return 'ChildModel(id: $id, parentId: $parentId, name: $name, dateOfBirth: $dateOfBirth, interests: $interests, diagnosisNotes: $diagnosisNotes, goals: $goals)';
}


}

/// @nodoc
abstract mixin class $ChildModelCopyWith<$Res>  {
  factory $ChildModelCopyWith(ChildModel value, $Res Function(ChildModel) _then) = _$ChildModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'parent_id') int parentId, String name,@JsonKey(name: 'date_of_birth') String dateOfBirth, List<String> interests,@JsonKey(name: 'diagnosis_notes') String? diagnosisNotes, List<dynamic> goals
});




}
/// @nodoc
class _$ChildModelCopyWithImpl<$Res>
    implements $ChildModelCopyWith<$Res> {
  _$ChildModelCopyWithImpl(this._self, this._then);

  final ChildModel _self;
  final $Res Function(ChildModel) _then;

/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = null,Object? name = null,Object? dateOfBirth = null,Object? interests = null,Object? diagnosisNotes = freezed,Object? goals = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,diagnosisNotes: freezed == diagnosisNotes ? _self.diagnosisNotes : diagnosisNotes // ignore: cast_nullable_to_non_nullable
as String?,goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChildModel].
extension ChildModelPatterns on ChildModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildModel value)  $default,){
final _that = this;
switch (_that) {
case _ChildModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'parent_id')  int parentId,  String name, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  List<String> interests, @JsonKey(name: 'diagnosis_notes')  String? diagnosisNotes,  List<dynamic> goals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
return $default(_that.id,_that.parentId,_that.name,_that.dateOfBirth,_that.interests,_that.diagnosisNotes,_that.goals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'parent_id')  int parentId,  String name, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  List<String> interests, @JsonKey(name: 'diagnosis_notes')  String? diagnosisNotes,  List<dynamic> goals)  $default,) {final _that = this;
switch (_that) {
case _ChildModel():
return $default(_that.id,_that.parentId,_that.name,_that.dateOfBirth,_that.interests,_that.diagnosisNotes,_that.goals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'parent_id')  int parentId,  String name, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  List<String> interests, @JsonKey(name: 'diagnosis_notes')  String? diagnosisNotes,  List<dynamic> goals)?  $default,) {final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
return $default(_that.id,_that.parentId,_that.name,_that.dateOfBirth,_that.interests,_that.diagnosisNotes,_that.goals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChildModel implements ChildModel {
  const _ChildModel({required this.id, @JsonKey(name: 'parent_id') required this.parentId, required this.name, @JsonKey(name: 'date_of_birth') this.dateOfBirth = '', final  List<String> interests = const [], @JsonKey(name: 'diagnosis_notes') this.diagnosisNotes, final  List<dynamic> goals = const []}): _interests = interests,_goals = goals;
  factory _ChildModel.fromJson(Map<String, dynamic> json) => _$ChildModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'parent_id') final  int parentId;
@override final  String name;
@override@JsonKey(name: 'date_of_birth') final  String dateOfBirth;
 final  List<String> _interests;
@override@JsonKey() List<String> get interests {
  if (_interests is EqualUnmodifiableListView) return _interests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interests);
}

@override@JsonKey(name: 'diagnosis_notes') final  String? diagnosisNotes;
 final  List<dynamic> _goals;
@override@JsonKey() List<dynamic> get goals {
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goals);
}


/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildModelCopyWith<_ChildModel> get copyWith => __$ChildModelCopyWithImpl<_ChildModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildModel&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&const DeepCollectionEquality().equals(other._interests, _interests)&&(identical(other.diagnosisNotes, diagnosisNotes) || other.diagnosisNotes == diagnosisNotes)&&const DeepCollectionEquality().equals(other._goals, _goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,name,dateOfBirth,const DeepCollectionEquality().hash(_interests),diagnosisNotes,const DeepCollectionEquality().hash(_goals));

@override
String toString() {
  return 'ChildModel(id: $id, parentId: $parentId, name: $name, dateOfBirth: $dateOfBirth, interests: $interests, diagnosisNotes: $diagnosisNotes, goals: $goals)';
}


}

/// @nodoc
abstract mixin class _$ChildModelCopyWith<$Res> implements $ChildModelCopyWith<$Res> {
  factory _$ChildModelCopyWith(_ChildModel value, $Res Function(_ChildModel) _then) = __$ChildModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'parent_id') int parentId, String name,@JsonKey(name: 'date_of_birth') String dateOfBirth, List<String> interests,@JsonKey(name: 'diagnosis_notes') String? diagnosisNotes, List<dynamic> goals
});




}
/// @nodoc
class __$ChildModelCopyWithImpl<$Res>
    implements _$ChildModelCopyWith<$Res> {
  __$ChildModelCopyWithImpl(this._self, this._then);

  final _ChildModel _self;
  final $Res Function(_ChildModel) _then;

/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = null,Object? name = null,Object? dateOfBirth = null,Object? interests = null,Object? diagnosisNotes = freezed,Object? goals = null,}) {
  return _then(_ChildModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,diagnosisNotes: freezed == diagnosisNotes ? _self.diagnosisNotes : diagnosisNotes // ignore: cast_nullable_to_non_nullable
as String?,goals: null == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
