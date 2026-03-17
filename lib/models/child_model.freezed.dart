// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChildModel _$ChildModelFromJson(Map<String, dynamic> json) {
  return _ChildModel.fromJson(json);
}

/// @nodoc
mixin _$ChildModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  List<String> get interests => throw _privateConstructorUsedError;
  @JsonKey(name: 'diagnosis_notes')
  String? get diagnosisNotes => throw _privateConstructorUsedError;
  List<dynamic> get goals => throw _privateConstructorUsedError;

  /// Serializes this ChildModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildModelCopyWith<ChildModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildModelCopyWith<$Res> {
  factory $ChildModelCopyWith(
    ChildModel value,
    $Res Function(ChildModel) then,
  ) = _$ChildModelCopyWithImpl<$Res, ChildModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'parent_id') int parentId,
    String name,
    @JsonKey(name: 'date_of_birth') String dateOfBirth,
    List<String> interests,
    @JsonKey(name: 'diagnosis_notes') String? diagnosisNotes,
    List<dynamic> goals,
  });
}

/// @nodoc
class _$ChildModelCopyWithImpl<$Res, $Val extends ChildModel>
    implements $ChildModelCopyWith<$Res> {
  _$ChildModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? interests = null,
    Object? diagnosisNotes = freezed,
    Object? goals = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            dateOfBirth: null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as String,
            interests: null == interests
                ? _value.interests
                : interests // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            diagnosisNotes: freezed == diagnosisNotes
                ? _value.diagnosisNotes
                : diagnosisNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            goals: null == goals
                ? _value.goals
                : goals // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChildModelImplCopyWith<$Res>
    implements $ChildModelCopyWith<$Res> {
  factory _$$ChildModelImplCopyWith(
    _$ChildModelImpl value,
    $Res Function(_$ChildModelImpl) then,
  ) = __$$ChildModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'parent_id') int parentId,
    String name,
    @JsonKey(name: 'date_of_birth') String dateOfBirth,
    List<String> interests,
    @JsonKey(name: 'diagnosis_notes') String? diagnosisNotes,
    List<dynamic> goals,
  });
}

/// @nodoc
class __$$ChildModelImplCopyWithImpl<$Res>
    extends _$ChildModelCopyWithImpl<$Res, _$ChildModelImpl>
    implements _$$ChildModelImplCopyWith<$Res> {
  __$$ChildModelImplCopyWithImpl(
    _$ChildModelImpl _value,
    $Res Function(_$ChildModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? interests = null,
    Object? diagnosisNotes = freezed,
    Object? goals = null,
  }) {
    return _then(
      _$ChildModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: null == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String,
        interests: null == interests
            ? _value._interests
            : interests // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        diagnosisNotes: freezed == diagnosisNotes
            ? _value.diagnosisNotes
            : diagnosisNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        goals: null == goals
            ? _value._goals
            : goals // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildModelImpl implements _ChildModel {
  const _$ChildModelImpl({
    required this.id,
    @JsonKey(name: 'parent_id') required this.parentId,
    required this.name,
    @JsonKey(name: 'date_of_birth') this.dateOfBirth = '',
    final List<String> interests = const [],
    @JsonKey(name: 'diagnosis_notes') this.diagnosisNotes,
    final List<dynamic> goals = const [],
  }) : _interests = interests,
       _goals = goals;

  factory _$ChildModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'parent_id')
  final int parentId;
  @override
  final String name;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  final List<String> _interests;
  @override
  @JsonKey()
  List<String> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  @override
  @JsonKey(name: 'diagnosis_notes')
  final String? diagnosisNotes;
  final List<dynamic> _goals;
  @override
  @JsonKey()
  List<dynamic> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  String toString() {
    return 'ChildModel(id: $id, parentId: $parentId, name: $name, dateOfBirth: $dateOfBirth, interests: $interests, diagnosisNotes: $diagnosisNotes, goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(
              other._interests,
              _interests,
            ) &&
            (identical(other.diagnosisNotes, diagnosisNotes) ||
                other.diagnosisNotes == diagnosisNotes) &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    parentId,
    name,
    dateOfBirth,
    const DeepCollectionEquality().hash(_interests),
    diagnosisNotes,
    const DeepCollectionEquality().hash(_goals),
  );

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildModelImplCopyWith<_$ChildModelImpl> get copyWith =>
      __$$ChildModelImplCopyWithImpl<_$ChildModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildModelImplToJson(this);
  }
}

abstract class _ChildModel implements ChildModel {
  const factory _ChildModel({
    required final int id,
    @JsonKey(name: 'parent_id') required final int parentId,
    required final String name,
    @JsonKey(name: 'date_of_birth') final String dateOfBirth,
    final List<String> interests,
    @JsonKey(name: 'diagnosis_notes') final String? diagnosisNotes,
    final List<dynamic> goals,
  }) = _$ChildModelImpl;

  factory _ChildModel.fromJson(Map<String, dynamic> json) =
      _$ChildModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'parent_id')
  int get parentId;
  @override
  String get name;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  List<String> get interests;
  @override
  @JsonKey(name: 'diagnosis_notes')
  String? get diagnosisNotes;
  @override
  List<dynamic> get goals;

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildModelImplCopyWith<_$ChildModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
