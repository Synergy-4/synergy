// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityPayload {

@JsonKey(name: 'activity_id') int? get activityId; String get version; ThemeConfigData get theme; List<StepConfig> get steps;
/// Create a copy of ActivityPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityPayloadCopyWith<ActivityPayload> get copyWith => _$ActivityPayloadCopyWithImpl<ActivityPayload>(this as ActivityPayload, _$identity);

  /// Serializes this ActivityPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityPayload&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.version, version) || other.version == version)&&(identical(other.theme, theme) || other.theme == theme)&&const DeepCollectionEquality().equals(other.steps, steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,version,theme,const DeepCollectionEquality().hash(steps));

@override
String toString() {
  return 'ActivityPayload(activityId: $activityId, version: $version, theme: $theme, steps: $steps)';
}


}

/// @nodoc
abstract mixin class $ActivityPayloadCopyWith<$Res>  {
  factory $ActivityPayloadCopyWith(ActivityPayload value, $Res Function(ActivityPayload) _then) = _$ActivityPayloadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_id') int? activityId, String version, ThemeConfigData theme, List<StepConfig> steps
});


$ThemeConfigDataCopyWith<$Res> get theme;

}
/// @nodoc
class _$ActivityPayloadCopyWithImpl<$Res>
    implements $ActivityPayloadCopyWith<$Res> {
  _$ActivityPayloadCopyWithImpl(this._self, this._then);

  final ActivityPayload _self;
  final $Res Function(ActivityPayload) _then;

/// Create a copy of ActivityPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = freezed,Object? version = null,Object? theme = null,Object? steps = null,}) {
  return _then(_self.copyWith(
activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeConfigData,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<StepConfig>,
  ));
}
/// Create a copy of ActivityPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThemeConfigDataCopyWith<$Res> get theme {
  
  return $ThemeConfigDataCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActivityPayload].
extension ActivityPayloadPatterns on ActivityPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityPayload value)  $default,){
final _that = this;
switch (_that) {
case _ActivityPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityPayload value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  int? activityId,  String version,  ThemeConfigData theme,  List<StepConfig> steps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityPayload() when $default != null:
return $default(_that.activityId,_that.version,_that.theme,_that.steps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  int? activityId,  String version,  ThemeConfigData theme,  List<StepConfig> steps)  $default,) {final _that = this;
switch (_that) {
case _ActivityPayload():
return $default(_that.activityId,_that.version,_that.theme,_that.steps);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activity_id')  int? activityId,  String version,  ThemeConfigData theme,  List<StepConfig> steps)?  $default,) {final _that = this;
switch (_that) {
case _ActivityPayload() when $default != null:
return $default(_that.activityId,_that.version,_that.theme,_that.steps);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityPayload implements ActivityPayload {
  const _ActivityPayload({@JsonKey(name: 'activity_id') this.activityId, this.version = '1.0.0', required this.theme, required final  List<StepConfig> steps}): _steps = steps;
  factory _ActivityPayload.fromJson(Map<String, dynamic> json) => _$ActivityPayloadFromJson(json);

@override@JsonKey(name: 'activity_id') final  int? activityId;
@override@JsonKey() final  String version;
@override final  ThemeConfigData theme;
 final  List<StepConfig> _steps;
@override List<StepConfig> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}


/// Create a copy of ActivityPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityPayloadCopyWith<_ActivityPayload> get copyWith => __$ActivityPayloadCopyWithImpl<_ActivityPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityPayload&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.version, version) || other.version == version)&&(identical(other.theme, theme) || other.theme == theme)&&const DeepCollectionEquality().equals(other._steps, _steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,version,theme,const DeepCollectionEquality().hash(_steps));

@override
String toString() {
  return 'ActivityPayload(activityId: $activityId, version: $version, theme: $theme, steps: $steps)';
}


}

/// @nodoc
abstract mixin class _$ActivityPayloadCopyWith<$Res> implements $ActivityPayloadCopyWith<$Res> {
  factory _$ActivityPayloadCopyWith(_ActivityPayload value, $Res Function(_ActivityPayload) _then) = __$ActivityPayloadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_id') int? activityId, String version, ThemeConfigData theme, List<StepConfig> steps
});


@override $ThemeConfigDataCopyWith<$Res> get theme;

}
/// @nodoc
class __$ActivityPayloadCopyWithImpl<$Res>
    implements _$ActivityPayloadCopyWith<$Res> {
  __$ActivityPayloadCopyWithImpl(this._self, this._then);

  final _ActivityPayload _self;
  final $Res Function(_ActivityPayload) _then;

/// Create a copy of ActivityPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = freezed,Object? version = null,Object? theme = null,Object? steps = null,}) {
  return _then(_ActivityPayload(
activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeConfigData,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<StepConfig>,
  ));
}

/// Create a copy of ActivityPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThemeConfigDataCopyWith<$Res> get theme {
  
  return $ThemeConfigDataCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}


/// @nodoc
mixin _$ThemeConfigData {

@JsonKey(name: 'primary_color') String get primaryColor;@JsonKey(name: 'secondary_color') String get secondaryColor;@JsonKey(name: 'background_color') String get backgroundColor;@JsonKey(name: 'card_color') String get cardColor;@JsonKey(name: 'success_color') String get successColor;@JsonKey(name: 'error_color') String get errorColor;@JsonKey(name: 'heading_font') FontConfig get headingFont;@JsonKey(name: 'body_font') FontConfig get bodyFont;
/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeConfigDataCopyWith<ThemeConfigData> get copyWith => _$ThemeConfigDataCopyWithImpl<ThemeConfigData>(this as ThemeConfigData, _$identity);

  /// Serializes this ThemeConfigData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeConfigData&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.secondaryColor, secondaryColor) || other.secondaryColor == secondaryColor)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.cardColor, cardColor) || other.cardColor == cardColor)&&(identical(other.successColor, successColor) || other.successColor == successColor)&&(identical(other.errorColor, errorColor) || other.errorColor == errorColor)&&(identical(other.headingFont, headingFont) || other.headingFont == headingFont)&&(identical(other.bodyFont, bodyFont) || other.bodyFont == bodyFont));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primaryColor,secondaryColor,backgroundColor,cardColor,successColor,errorColor,headingFont,bodyFont);

@override
String toString() {
  return 'ThemeConfigData(primaryColor: $primaryColor, secondaryColor: $secondaryColor, backgroundColor: $backgroundColor, cardColor: $cardColor, successColor: $successColor, errorColor: $errorColor, headingFont: $headingFont, bodyFont: $bodyFont)';
}


}

/// @nodoc
abstract mixin class $ThemeConfigDataCopyWith<$Res>  {
  factory $ThemeConfigDataCopyWith(ThemeConfigData value, $Res Function(ThemeConfigData) _then) = _$ThemeConfigDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'primary_color') String primaryColor,@JsonKey(name: 'secondary_color') String secondaryColor,@JsonKey(name: 'background_color') String backgroundColor,@JsonKey(name: 'card_color') String cardColor,@JsonKey(name: 'success_color') String successColor,@JsonKey(name: 'error_color') String errorColor,@JsonKey(name: 'heading_font') FontConfig headingFont,@JsonKey(name: 'body_font') FontConfig bodyFont
});


$FontConfigCopyWith<$Res> get headingFont;$FontConfigCopyWith<$Res> get bodyFont;

}
/// @nodoc
class _$ThemeConfigDataCopyWithImpl<$Res>
    implements $ThemeConfigDataCopyWith<$Res> {
  _$ThemeConfigDataCopyWithImpl(this._self, this._then);

  final ThemeConfigData _self;
  final $Res Function(ThemeConfigData) _then;

/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primaryColor = null,Object? secondaryColor = null,Object? backgroundColor = null,Object? cardColor = null,Object? successColor = null,Object? errorColor = null,Object? headingFont = null,Object? bodyFont = null,}) {
  return _then(_self.copyWith(
primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String,secondaryColor: null == secondaryColor ? _self.secondaryColor : secondaryColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,cardColor: null == cardColor ? _self.cardColor : cardColor // ignore: cast_nullable_to_non_nullable
as String,successColor: null == successColor ? _self.successColor : successColor // ignore: cast_nullable_to_non_nullable
as String,errorColor: null == errorColor ? _self.errorColor : errorColor // ignore: cast_nullable_to_non_nullable
as String,headingFont: null == headingFont ? _self.headingFont : headingFont // ignore: cast_nullable_to_non_nullable
as FontConfig,bodyFont: null == bodyFont ? _self.bodyFont : bodyFont // ignore: cast_nullable_to_non_nullable
as FontConfig,
  ));
}
/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FontConfigCopyWith<$Res> get headingFont {
  
  return $FontConfigCopyWith<$Res>(_self.headingFont, (value) {
    return _then(_self.copyWith(headingFont: value));
  });
}/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FontConfigCopyWith<$Res> get bodyFont {
  
  return $FontConfigCopyWith<$Res>(_self.bodyFont, (value) {
    return _then(_self.copyWith(bodyFont: value));
  });
}
}


/// Adds pattern-matching-related methods to [ThemeConfigData].
extension ThemeConfigDataPatterns on ThemeConfigData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeConfigData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeConfigData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeConfigData value)  $default,){
final _that = this;
switch (_that) {
case _ThemeConfigData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeConfigData value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeConfigData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'primary_color')  String primaryColor, @JsonKey(name: 'secondary_color')  String secondaryColor, @JsonKey(name: 'background_color')  String backgroundColor, @JsonKey(name: 'card_color')  String cardColor, @JsonKey(name: 'success_color')  String successColor, @JsonKey(name: 'error_color')  String errorColor, @JsonKey(name: 'heading_font')  FontConfig headingFont, @JsonKey(name: 'body_font')  FontConfig bodyFont)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeConfigData() when $default != null:
return $default(_that.primaryColor,_that.secondaryColor,_that.backgroundColor,_that.cardColor,_that.successColor,_that.errorColor,_that.headingFont,_that.bodyFont);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'primary_color')  String primaryColor, @JsonKey(name: 'secondary_color')  String secondaryColor, @JsonKey(name: 'background_color')  String backgroundColor, @JsonKey(name: 'card_color')  String cardColor, @JsonKey(name: 'success_color')  String successColor, @JsonKey(name: 'error_color')  String errorColor, @JsonKey(name: 'heading_font')  FontConfig headingFont, @JsonKey(name: 'body_font')  FontConfig bodyFont)  $default,) {final _that = this;
switch (_that) {
case _ThemeConfigData():
return $default(_that.primaryColor,_that.secondaryColor,_that.backgroundColor,_that.cardColor,_that.successColor,_that.errorColor,_that.headingFont,_that.bodyFont);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'primary_color')  String primaryColor, @JsonKey(name: 'secondary_color')  String secondaryColor, @JsonKey(name: 'background_color')  String backgroundColor, @JsonKey(name: 'card_color')  String cardColor, @JsonKey(name: 'success_color')  String successColor, @JsonKey(name: 'error_color')  String errorColor, @JsonKey(name: 'heading_font')  FontConfig headingFont, @JsonKey(name: 'body_font')  FontConfig bodyFont)?  $default,) {final _that = this;
switch (_that) {
case _ThemeConfigData() when $default != null:
return $default(_that.primaryColor,_that.secondaryColor,_that.backgroundColor,_that.cardColor,_that.successColor,_that.errorColor,_that.headingFont,_that.bodyFont);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThemeConfigData implements ThemeConfigData {
  const _ThemeConfigData({@JsonKey(name: 'primary_color') required this.primaryColor, @JsonKey(name: 'secondary_color') required this.secondaryColor, @JsonKey(name: 'background_color') required this.backgroundColor, @JsonKey(name: 'card_color') required this.cardColor, @JsonKey(name: 'success_color') this.successColor = '#4CAF50', @JsonKey(name: 'error_color') this.errorColor = '#F44336', @JsonKey(name: 'heading_font') required this.headingFont, @JsonKey(name: 'body_font') required this.bodyFont});
  factory _ThemeConfigData.fromJson(Map<String, dynamic> json) => _$ThemeConfigDataFromJson(json);

@override@JsonKey(name: 'primary_color') final  String primaryColor;
@override@JsonKey(name: 'secondary_color') final  String secondaryColor;
@override@JsonKey(name: 'background_color') final  String backgroundColor;
@override@JsonKey(name: 'card_color') final  String cardColor;
@override@JsonKey(name: 'success_color') final  String successColor;
@override@JsonKey(name: 'error_color') final  String errorColor;
@override@JsonKey(name: 'heading_font') final  FontConfig headingFont;
@override@JsonKey(name: 'body_font') final  FontConfig bodyFont;

/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeConfigDataCopyWith<_ThemeConfigData> get copyWith => __$ThemeConfigDataCopyWithImpl<_ThemeConfigData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThemeConfigDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeConfigData&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.secondaryColor, secondaryColor) || other.secondaryColor == secondaryColor)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.cardColor, cardColor) || other.cardColor == cardColor)&&(identical(other.successColor, successColor) || other.successColor == successColor)&&(identical(other.errorColor, errorColor) || other.errorColor == errorColor)&&(identical(other.headingFont, headingFont) || other.headingFont == headingFont)&&(identical(other.bodyFont, bodyFont) || other.bodyFont == bodyFont));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primaryColor,secondaryColor,backgroundColor,cardColor,successColor,errorColor,headingFont,bodyFont);

@override
String toString() {
  return 'ThemeConfigData(primaryColor: $primaryColor, secondaryColor: $secondaryColor, backgroundColor: $backgroundColor, cardColor: $cardColor, successColor: $successColor, errorColor: $errorColor, headingFont: $headingFont, bodyFont: $bodyFont)';
}


}

/// @nodoc
abstract mixin class _$ThemeConfigDataCopyWith<$Res> implements $ThemeConfigDataCopyWith<$Res> {
  factory _$ThemeConfigDataCopyWith(_ThemeConfigData value, $Res Function(_ThemeConfigData) _then) = __$ThemeConfigDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'primary_color') String primaryColor,@JsonKey(name: 'secondary_color') String secondaryColor,@JsonKey(name: 'background_color') String backgroundColor,@JsonKey(name: 'card_color') String cardColor,@JsonKey(name: 'success_color') String successColor,@JsonKey(name: 'error_color') String errorColor,@JsonKey(name: 'heading_font') FontConfig headingFont,@JsonKey(name: 'body_font') FontConfig bodyFont
});


@override $FontConfigCopyWith<$Res> get headingFont;@override $FontConfigCopyWith<$Res> get bodyFont;

}
/// @nodoc
class __$ThemeConfigDataCopyWithImpl<$Res>
    implements _$ThemeConfigDataCopyWith<$Res> {
  __$ThemeConfigDataCopyWithImpl(this._self, this._then);

  final _ThemeConfigData _self;
  final $Res Function(_ThemeConfigData) _then;

/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primaryColor = null,Object? secondaryColor = null,Object? backgroundColor = null,Object? cardColor = null,Object? successColor = null,Object? errorColor = null,Object? headingFont = null,Object? bodyFont = null,}) {
  return _then(_ThemeConfigData(
primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String,secondaryColor: null == secondaryColor ? _self.secondaryColor : secondaryColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,cardColor: null == cardColor ? _self.cardColor : cardColor // ignore: cast_nullable_to_non_nullable
as String,successColor: null == successColor ? _self.successColor : successColor // ignore: cast_nullable_to_non_nullable
as String,errorColor: null == errorColor ? _self.errorColor : errorColor // ignore: cast_nullable_to_non_nullable
as String,headingFont: null == headingFont ? _self.headingFont : headingFont // ignore: cast_nullable_to_non_nullable
as FontConfig,bodyFont: null == bodyFont ? _self.bodyFont : bodyFont // ignore: cast_nullable_to_non_nullable
as FontConfig,
  ));
}

/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FontConfigCopyWith<$Res> get headingFont {
  
  return $FontConfigCopyWith<$Res>(_self.headingFont, (value) {
    return _then(_self.copyWith(headingFont: value));
  });
}/// Create a copy of ThemeConfigData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FontConfigCopyWith<$Res> get bodyFont {
  
  return $FontConfigCopyWith<$Res>(_self.bodyFont, (value) {
    return _then(_self.copyWith(bodyFont: value));
  });
}
}


/// @nodoc
mixin _$FontConfig {

 String get family; double get size; String get weight; String get color;
/// Create a copy of FontConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FontConfigCopyWith<FontConfig> get copyWith => _$FontConfigCopyWithImpl<FontConfig>(this as FontConfig, _$identity);

  /// Serializes this FontConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FontConfig&&(identical(other.family, family) || other.family == family)&&(identical(other.size, size) || other.size == size)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,family,size,weight,color);

@override
String toString() {
  return 'FontConfig(family: $family, size: $size, weight: $weight, color: $color)';
}


}

/// @nodoc
abstract mixin class $FontConfigCopyWith<$Res>  {
  factory $FontConfigCopyWith(FontConfig value, $Res Function(FontConfig) _then) = _$FontConfigCopyWithImpl;
@useResult
$Res call({
 String family, double size, String weight, String color
});




}
/// @nodoc
class _$FontConfigCopyWithImpl<$Res>
    implements $FontConfigCopyWith<$Res> {
  _$FontConfigCopyWithImpl(this._self, this._then);

  final FontConfig _self;
  final $Res Function(FontConfig) _then;

/// Create a copy of FontConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? family = null,Object? size = null,Object? weight = null,Object? color = null,}) {
  return _then(_self.copyWith(
family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FontConfig].
extension FontConfigPatterns on FontConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FontConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FontConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FontConfig value)  $default,){
final _that = this;
switch (_that) {
case _FontConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FontConfig value)?  $default,){
final _that = this;
switch (_that) {
case _FontConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String family,  double size,  String weight,  String color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FontConfig() when $default != null:
return $default(_that.family,_that.size,_that.weight,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String family,  double size,  String weight,  String color)  $default,) {final _that = this;
switch (_that) {
case _FontConfig():
return $default(_that.family,_that.size,_that.weight,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String family,  double size,  String weight,  String color)?  $default,) {final _that = this;
switch (_that) {
case _FontConfig() when $default != null:
return $default(_that.family,_that.size,_that.weight,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FontConfig implements FontConfig {
  const _FontConfig({required this.family, required this.size, required this.weight, required this.color});
  factory _FontConfig.fromJson(Map<String, dynamic> json) => _$FontConfigFromJson(json);

@override final  String family;
@override final  double size;
@override final  String weight;
@override final  String color;

/// Create a copy of FontConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FontConfigCopyWith<_FontConfig> get copyWith => __$FontConfigCopyWithImpl<_FontConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FontConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FontConfig&&(identical(other.family, family) || other.family == family)&&(identical(other.size, size) || other.size == size)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,family,size,weight,color);

@override
String toString() {
  return 'FontConfig(family: $family, size: $size, weight: $weight, color: $color)';
}


}

/// @nodoc
abstract mixin class _$FontConfigCopyWith<$Res> implements $FontConfigCopyWith<$Res> {
  factory _$FontConfigCopyWith(_FontConfig value, $Res Function(_FontConfig) _then) = __$FontConfigCopyWithImpl;
@override @useResult
$Res call({
 String family, double size, String weight, String color
});




}
/// @nodoc
class __$FontConfigCopyWithImpl<$Res>
    implements _$FontConfigCopyWith<$Res> {
  __$FontConfigCopyWithImpl(this._self, this._then);

  final _FontConfig _self;
  final $Res Function(_FontConfig) _then;

/// Create a copy of FontConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? family = null,Object? size = null,Object? weight = null,Object? color = null,}) {
  return _then(_FontConfig(
family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StepConfig {

 String get id; String get type;// "instruction", "game", "reward"
 String get title; String? get description;@JsonKey(name: 'voiceover_text') String? get voiceoverText;@JsonKey(name: 'voiceover_audio_url') String? get voiceoverAudioUrl;@JsonKey(name: 'game_config') GameConfig? get gameConfig;@JsonKey(name: 'lottie_url') String? get lottieUrl;
/// Create a copy of StepConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepConfigCopyWith<StepConfig> get copyWith => _$StepConfigCopyWithImpl<StepConfig>(this as StepConfig, _$identity);

  /// Serializes this StepConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.voiceoverText, voiceoverText) || other.voiceoverText == voiceoverText)&&(identical(other.voiceoverAudioUrl, voiceoverAudioUrl) || other.voiceoverAudioUrl == voiceoverAudioUrl)&&(identical(other.gameConfig, gameConfig) || other.gameConfig == gameConfig)&&(identical(other.lottieUrl, lottieUrl) || other.lottieUrl == lottieUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,description,voiceoverText,voiceoverAudioUrl,gameConfig,lottieUrl);

@override
String toString() {
  return 'StepConfig(id: $id, type: $type, title: $title, description: $description, voiceoverText: $voiceoverText, voiceoverAudioUrl: $voiceoverAudioUrl, gameConfig: $gameConfig, lottieUrl: $lottieUrl)';
}


}

/// @nodoc
abstract mixin class $StepConfigCopyWith<$Res>  {
  factory $StepConfigCopyWith(StepConfig value, $Res Function(StepConfig) _then) = _$StepConfigCopyWithImpl;
@useResult
$Res call({
 String id, String type, String title, String? description,@JsonKey(name: 'voiceover_text') String? voiceoverText,@JsonKey(name: 'voiceover_audio_url') String? voiceoverAudioUrl,@JsonKey(name: 'game_config') GameConfig? gameConfig,@JsonKey(name: 'lottie_url') String? lottieUrl
});


$GameConfigCopyWith<$Res>? get gameConfig;

}
/// @nodoc
class _$StepConfigCopyWithImpl<$Res>
    implements $StepConfigCopyWith<$Res> {
  _$StepConfigCopyWithImpl(this._self, this._then);

  final StepConfig _self;
  final $Res Function(StepConfig) _then;

/// Create a copy of StepConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = freezed,Object? voiceoverText = freezed,Object? voiceoverAudioUrl = freezed,Object? gameConfig = freezed,Object? lottieUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,voiceoverText: freezed == voiceoverText ? _self.voiceoverText : voiceoverText // ignore: cast_nullable_to_non_nullable
as String?,voiceoverAudioUrl: freezed == voiceoverAudioUrl ? _self.voiceoverAudioUrl : voiceoverAudioUrl // ignore: cast_nullable_to_non_nullable
as String?,gameConfig: freezed == gameConfig ? _self.gameConfig : gameConfig // ignore: cast_nullable_to_non_nullable
as GameConfig?,lottieUrl: freezed == lottieUrl ? _self.lottieUrl : lottieUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of StepConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameConfigCopyWith<$Res>? get gameConfig {
    if (_self.gameConfig == null) {
    return null;
  }

  return $GameConfigCopyWith<$Res>(_self.gameConfig!, (value) {
    return _then(_self.copyWith(gameConfig: value));
  });
}
}


/// Adds pattern-matching-related methods to [StepConfig].
extension StepConfigPatterns on StepConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepConfig value)  $default,){
final _that = this;
switch (_that) {
case _StepConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepConfig value)?  $default,){
final _that = this;
switch (_that) {
case _StepConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String? description, @JsonKey(name: 'voiceover_text')  String? voiceoverText, @JsonKey(name: 'voiceover_audio_url')  String? voiceoverAudioUrl, @JsonKey(name: 'game_config')  GameConfig? gameConfig, @JsonKey(name: 'lottie_url')  String? lottieUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepConfig() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.voiceoverText,_that.voiceoverAudioUrl,_that.gameConfig,_that.lottieUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String? description, @JsonKey(name: 'voiceover_text')  String? voiceoverText, @JsonKey(name: 'voiceover_audio_url')  String? voiceoverAudioUrl, @JsonKey(name: 'game_config')  GameConfig? gameConfig, @JsonKey(name: 'lottie_url')  String? lottieUrl)  $default,) {final _that = this;
switch (_that) {
case _StepConfig():
return $default(_that.id,_that.type,_that.title,_that.description,_that.voiceoverText,_that.voiceoverAudioUrl,_that.gameConfig,_that.lottieUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String title,  String? description, @JsonKey(name: 'voiceover_text')  String? voiceoverText, @JsonKey(name: 'voiceover_audio_url')  String? voiceoverAudioUrl, @JsonKey(name: 'game_config')  GameConfig? gameConfig, @JsonKey(name: 'lottie_url')  String? lottieUrl)?  $default,) {final _that = this;
switch (_that) {
case _StepConfig() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.voiceoverText,_that.voiceoverAudioUrl,_that.gameConfig,_that.lottieUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StepConfig implements StepConfig {
  const _StepConfig({required this.id, required this.type, required this.title, this.description, @JsonKey(name: 'voiceover_text') this.voiceoverText, @JsonKey(name: 'voiceover_audio_url') this.voiceoverAudioUrl, @JsonKey(name: 'game_config') this.gameConfig, @JsonKey(name: 'lottie_url') this.lottieUrl});
  factory _StepConfig.fromJson(Map<String, dynamic> json) => _$StepConfigFromJson(json);

@override final  String id;
@override final  String type;
// "instruction", "game", "reward"
@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'voiceover_text') final  String? voiceoverText;
@override@JsonKey(name: 'voiceover_audio_url') final  String? voiceoverAudioUrl;
@override@JsonKey(name: 'game_config') final  GameConfig? gameConfig;
@override@JsonKey(name: 'lottie_url') final  String? lottieUrl;

/// Create a copy of StepConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepConfigCopyWith<_StepConfig> get copyWith => __$StepConfigCopyWithImpl<_StepConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StepConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.voiceoverText, voiceoverText) || other.voiceoverText == voiceoverText)&&(identical(other.voiceoverAudioUrl, voiceoverAudioUrl) || other.voiceoverAudioUrl == voiceoverAudioUrl)&&(identical(other.gameConfig, gameConfig) || other.gameConfig == gameConfig)&&(identical(other.lottieUrl, lottieUrl) || other.lottieUrl == lottieUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,description,voiceoverText,voiceoverAudioUrl,gameConfig,lottieUrl);

@override
String toString() {
  return 'StepConfig(id: $id, type: $type, title: $title, description: $description, voiceoverText: $voiceoverText, voiceoverAudioUrl: $voiceoverAudioUrl, gameConfig: $gameConfig, lottieUrl: $lottieUrl)';
}


}

/// @nodoc
abstract mixin class _$StepConfigCopyWith<$Res> implements $StepConfigCopyWith<$Res> {
  factory _$StepConfigCopyWith(_StepConfig value, $Res Function(_StepConfig) _then) = __$StepConfigCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String title, String? description,@JsonKey(name: 'voiceover_text') String? voiceoverText,@JsonKey(name: 'voiceover_audio_url') String? voiceoverAudioUrl,@JsonKey(name: 'game_config') GameConfig? gameConfig,@JsonKey(name: 'lottie_url') String? lottieUrl
});


@override $GameConfigCopyWith<$Res>? get gameConfig;

}
/// @nodoc
class __$StepConfigCopyWithImpl<$Res>
    implements _$StepConfigCopyWith<$Res> {
  __$StepConfigCopyWithImpl(this._self, this._then);

  final _StepConfig _self;
  final $Res Function(_StepConfig) _then;

/// Create a copy of StepConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = freezed,Object? voiceoverText = freezed,Object? voiceoverAudioUrl = freezed,Object? gameConfig = freezed,Object? lottieUrl = freezed,}) {
  return _then(_StepConfig(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,voiceoverText: freezed == voiceoverText ? _self.voiceoverText : voiceoverText // ignore: cast_nullable_to_non_nullable
as String?,voiceoverAudioUrl: freezed == voiceoverAudioUrl ? _self.voiceoverAudioUrl : voiceoverAudioUrl // ignore: cast_nullable_to_non_nullable
as String?,gameConfig: freezed == gameConfig ? _self.gameConfig : gameConfig // ignore: cast_nullable_to_non_nullable
as GameConfig?,lottieUrl: freezed == lottieUrl ? _self.lottieUrl : lottieUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of StepConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameConfigCopyWith<$Res>? get gameConfig {
    if (_self.gameConfig == null) {
    return null;
  }

  return $GameConfigCopyWith<$Res>(_self.gameConfig!, (value) {
    return _then(_self.copyWith(gameConfig: value));
  });
}
}


/// @nodoc
mixin _$GameConfig {

@JsonKey(name: 'game_type') String get gameType; String get difficulty;@JsonKey(name: 'time_limit_seconds') int? get timeLimitSeconds;@JsonKey(name: 'parent_instruction') String? get parentInstruction;@JsonKey(name: 'parent_instruction_audio_url') String? get parentInstructionAudioUrl; Map<String, dynamic> get data;@JsonKey(name: 'on_success') GameEvent? get onSuccess;@JsonKey(name: 'on_failure') GameEvent? get onFailure;
/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameConfigCopyWith<GameConfig> get copyWith => _$GameConfigCopyWithImpl<GameConfig>(this as GameConfig, _$identity);

  /// Serializes this GameConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameConfig&&(identical(other.gameType, gameType) || other.gameType == gameType)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.timeLimitSeconds, timeLimitSeconds) || other.timeLimitSeconds == timeLimitSeconds)&&(identical(other.parentInstruction, parentInstruction) || other.parentInstruction == parentInstruction)&&(identical(other.parentInstructionAudioUrl, parentInstructionAudioUrl) || other.parentInstructionAudioUrl == parentInstructionAudioUrl)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.onSuccess, onSuccess) || other.onSuccess == onSuccess)&&(identical(other.onFailure, onFailure) || other.onFailure == onFailure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameType,difficulty,timeLimitSeconds,parentInstruction,parentInstructionAudioUrl,const DeepCollectionEquality().hash(data),onSuccess,onFailure);

@override
String toString() {
  return 'GameConfig(gameType: $gameType, difficulty: $difficulty, timeLimitSeconds: $timeLimitSeconds, parentInstruction: $parentInstruction, parentInstructionAudioUrl: $parentInstructionAudioUrl, data: $data, onSuccess: $onSuccess, onFailure: $onFailure)';
}


}

/// @nodoc
abstract mixin class $GameConfigCopyWith<$Res>  {
  factory $GameConfigCopyWith(GameConfig value, $Res Function(GameConfig) _then) = _$GameConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'game_type') String gameType, String difficulty,@JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,@JsonKey(name: 'parent_instruction') String? parentInstruction,@JsonKey(name: 'parent_instruction_audio_url') String? parentInstructionAudioUrl, Map<String, dynamic> data,@JsonKey(name: 'on_success') GameEvent? onSuccess,@JsonKey(name: 'on_failure') GameEvent? onFailure
});


$GameEventCopyWith<$Res>? get onSuccess;$GameEventCopyWith<$Res>? get onFailure;

}
/// @nodoc
class _$GameConfigCopyWithImpl<$Res>
    implements $GameConfigCopyWith<$Res> {
  _$GameConfigCopyWithImpl(this._self, this._then);

  final GameConfig _self;
  final $Res Function(GameConfig) _then;

/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameType = null,Object? difficulty = null,Object? timeLimitSeconds = freezed,Object? parentInstruction = freezed,Object? parentInstructionAudioUrl = freezed,Object? data = null,Object? onSuccess = freezed,Object? onFailure = freezed,}) {
  return _then(_self.copyWith(
gameType: null == gameType ? _self.gameType : gameType // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,timeLimitSeconds: freezed == timeLimitSeconds ? _self.timeLimitSeconds : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
as int?,parentInstruction: freezed == parentInstruction ? _self.parentInstruction : parentInstruction // ignore: cast_nullable_to_non_nullable
as String?,parentInstructionAudioUrl: freezed == parentInstructionAudioUrl ? _self.parentInstructionAudioUrl : parentInstructionAudioUrl // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,onSuccess: freezed == onSuccess ? _self.onSuccess : onSuccess // ignore: cast_nullable_to_non_nullable
as GameEvent?,onFailure: freezed == onFailure ? _self.onFailure : onFailure // ignore: cast_nullable_to_non_nullable
as GameEvent?,
  ));
}
/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameEventCopyWith<$Res>? get onSuccess {
    if (_self.onSuccess == null) {
    return null;
  }

  return $GameEventCopyWith<$Res>(_self.onSuccess!, (value) {
    return _then(_self.copyWith(onSuccess: value));
  });
}/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameEventCopyWith<$Res>? get onFailure {
    if (_self.onFailure == null) {
    return null;
  }

  return $GameEventCopyWith<$Res>(_self.onFailure!, (value) {
    return _then(_self.copyWith(onFailure: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameConfig].
extension GameConfigPatterns on GameConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameConfig value)  $default,){
final _that = this;
switch (_that) {
case _GameConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameConfig value)?  $default,){
final _that = this;
switch (_that) {
case _GameConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'game_type')  String gameType,  String difficulty, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'parent_instruction')  String? parentInstruction, @JsonKey(name: 'parent_instruction_audio_url')  String? parentInstructionAudioUrl,  Map<String, dynamic> data, @JsonKey(name: 'on_success')  GameEvent? onSuccess, @JsonKey(name: 'on_failure')  GameEvent? onFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameConfig() when $default != null:
return $default(_that.gameType,_that.difficulty,_that.timeLimitSeconds,_that.parentInstruction,_that.parentInstructionAudioUrl,_that.data,_that.onSuccess,_that.onFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'game_type')  String gameType,  String difficulty, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'parent_instruction')  String? parentInstruction, @JsonKey(name: 'parent_instruction_audio_url')  String? parentInstructionAudioUrl,  Map<String, dynamic> data, @JsonKey(name: 'on_success')  GameEvent? onSuccess, @JsonKey(name: 'on_failure')  GameEvent? onFailure)  $default,) {final _that = this;
switch (_that) {
case _GameConfig():
return $default(_that.gameType,_that.difficulty,_that.timeLimitSeconds,_that.parentInstruction,_that.parentInstructionAudioUrl,_that.data,_that.onSuccess,_that.onFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'game_type')  String gameType,  String difficulty, @JsonKey(name: 'time_limit_seconds')  int? timeLimitSeconds, @JsonKey(name: 'parent_instruction')  String? parentInstruction, @JsonKey(name: 'parent_instruction_audio_url')  String? parentInstructionAudioUrl,  Map<String, dynamic> data, @JsonKey(name: 'on_success')  GameEvent? onSuccess, @JsonKey(name: 'on_failure')  GameEvent? onFailure)?  $default,) {final _that = this;
switch (_that) {
case _GameConfig() when $default != null:
return $default(_that.gameType,_that.difficulty,_that.timeLimitSeconds,_that.parentInstruction,_that.parentInstructionAudioUrl,_that.data,_that.onSuccess,_that.onFailure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameConfig implements GameConfig {
  const _GameConfig({@JsonKey(name: 'game_type') required this.gameType, required this.difficulty, @JsonKey(name: 'time_limit_seconds') this.timeLimitSeconds, @JsonKey(name: 'parent_instruction') this.parentInstruction, @JsonKey(name: 'parent_instruction_audio_url') this.parentInstructionAudioUrl, required final  Map<String, dynamic> data, @JsonKey(name: 'on_success') this.onSuccess, @JsonKey(name: 'on_failure') this.onFailure}): _data = data;
  factory _GameConfig.fromJson(Map<String, dynamic> json) => _$GameConfigFromJson(json);

@override@JsonKey(name: 'game_type') final  String gameType;
@override final  String difficulty;
@override@JsonKey(name: 'time_limit_seconds') final  int? timeLimitSeconds;
@override@JsonKey(name: 'parent_instruction') final  String? parentInstruction;
@override@JsonKey(name: 'parent_instruction_audio_url') final  String? parentInstructionAudioUrl;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override@JsonKey(name: 'on_success') final  GameEvent? onSuccess;
@override@JsonKey(name: 'on_failure') final  GameEvent? onFailure;

/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameConfigCopyWith<_GameConfig> get copyWith => __$GameConfigCopyWithImpl<_GameConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameConfig&&(identical(other.gameType, gameType) || other.gameType == gameType)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.timeLimitSeconds, timeLimitSeconds) || other.timeLimitSeconds == timeLimitSeconds)&&(identical(other.parentInstruction, parentInstruction) || other.parentInstruction == parentInstruction)&&(identical(other.parentInstructionAudioUrl, parentInstructionAudioUrl) || other.parentInstructionAudioUrl == parentInstructionAudioUrl)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.onSuccess, onSuccess) || other.onSuccess == onSuccess)&&(identical(other.onFailure, onFailure) || other.onFailure == onFailure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameType,difficulty,timeLimitSeconds,parentInstruction,parentInstructionAudioUrl,const DeepCollectionEquality().hash(_data),onSuccess,onFailure);

@override
String toString() {
  return 'GameConfig(gameType: $gameType, difficulty: $difficulty, timeLimitSeconds: $timeLimitSeconds, parentInstruction: $parentInstruction, parentInstructionAudioUrl: $parentInstructionAudioUrl, data: $data, onSuccess: $onSuccess, onFailure: $onFailure)';
}


}

/// @nodoc
abstract mixin class _$GameConfigCopyWith<$Res> implements $GameConfigCopyWith<$Res> {
  factory _$GameConfigCopyWith(_GameConfig value, $Res Function(_GameConfig) _then) = __$GameConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'game_type') String gameType, String difficulty,@JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,@JsonKey(name: 'parent_instruction') String? parentInstruction,@JsonKey(name: 'parent_instruction_audio_url') String? parentInstructionAudioUrl, Map<String, dynamic> data,@JsonKey(name: 'on_success') GameEvent? onSuccess,@JsonKey(name: 'on_failure') GameEvent? onFailure
});


@override $GameEventCopyWith<$Res>? get onSuccess;@override $GameEventCopyWith<$Res>? get onFailure;

}
/// @nodoc
class __$GameConfigCopyWithImpl<$Res>
    implements _$GameConfigCopyWith<$Res> {
  __$GameConfigCopyWithImpl(this._self, this._then);

  final _GameConfig _self;
  final $Res Function(_GameConfig) _then;

/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameType = null,Object? difficulty = null,Object? timeLimitSeconds = freezed,Object? parentInstruction = freezed,Object? parentInstructionAudioUrl = freezed,Object? data = null,Object? onSuccess = freezed,Object? onFailure = freezed,}) {
  return _then(_GameConfig(
gameType: null == gameType ? _self.gameType : gameType // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,timeLimitSeconds: freezed == timeLimitSeconds ? _self.timeLimitSeconds : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
as int?,parentInstruction: freezed == parentInstruction ? _self.parentInstruction : parentInstruction // ignore: cast_nullable_to_non_nullable
as String?,parentInstructionAudioUrl: freezed == parentInstructionAudioUrl ? _self.parentInstructionAudioUrl : parentInstructionAudioUrl // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,onSuccess: freezed == onSuccess ? _self.onSuccess : onSuccess // ignore: cast_nullable_to_non_nullable
as GameEvent?,onFailure: freezed == onFailure ? _self.onFailure : onFailure // ignore: cast_nullable_to_non_nullable
as GameEvent?,
  ));
}

/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameEventCopyWith<$Res>? get onSuccess {
    if (_self.onSuccess == null) {
    return null;
  }

  return $GameEventCopyWith<$Res>(_self.onSuccess!, (value) {
    return _then(_self.copyWith(onSuccess: value));
  });
}/// Create a copy of GameConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameEventCopyWith<$Res>? get onFailure {
    if (_self.onFailure == null) {
    return null;
  }

  return $GameEventCopyWith<$Res>(_self.onFailure!, (value) {
    return _then(_self.copyWith(onFailure: value));
  });
}
}


/// @nodoc
mixin _$GameEvent {

 String get type;// "animation", "sound", "navigation"
 String get action; Map<String, dynamic>? get params;
/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameEventCopyWith<GameEvent> get copyWith => _$GameEventCopyWithImpl<GameEvent>(this as GameEvent, _$identity);

  /// Serializes this GameEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent&&(identical(other.type, type) || other.type == type)&&(identical(other.action, action) || other.action == action)&&const DeepCollectionEquality().equals(other.params, params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,action,const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'GameEvent(type: $type, action: $action, params: $params)';
}


}

/// @nodoc
abstract mixin class $GameEventCopyWith<$Res>  {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) _then) = _$GameEventCopyWithImpl;
@useResult
$Res call({
 String type, String action, Map<String, dynamic>? params
});




}
/// @nodoc
class _$GameEventCopyWithImpl<$Res>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._self, this._then);

  final GameEvent _self;
  final $Res Function(GameEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? action = null,Object? params = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameEvent value)  $default,){
final _that = this;
switch (_that) {
case _GameEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameEvent value)?  $default,){
final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String action,  Map<String, dynamic>? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
return $default(_that.type,_that.action,_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String action,  Map<String, dynamic>? params)  $default,) {final _that = this;
switch (_that) {
case _GameEvent():
return $default(_that.type,_that.action,_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String action,  Map<String, dynamic>? params)?  $default,) {final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
return $default(_that.type,_that.action,_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameEvent implements GameEvent {
  const _GameEvent({required this.type, required this.action, final  Map<String, dynamic>? params}): _params = params;
  factory _GameEvent.fromJson(Map<String, dynamic> json) => _$GameEventFromJson(json);

@override final  String type;
// "animation", "sound", "navigation"
@override final  String action;
 final  Map<String, dynamic>? _params;
@override Map<String, dynamic>? get params {
  final value = _params;
  if (value == null) return null;
  if (_params is EqualUnmodifiableMapView) return _params;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameEventCopyWith<_GameEvent> get copyWith => __$GameEventCopyWithImpl<_GameEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameEvent&&(identical(other.type, type) || other.type == type)&&(identical(other.action, action) || other.action == action)&&const DeepCollectionEquality().equals(other._params, _params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,action,const DeepCollectionEquality().hash(_params));

@override
String toString() {
  return 'GameEvent(type: $type, action: $action, params: $params)';
}


}

/// @nodoc
abstract mixin class _$GameEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$GameEventCopyWith(_GameEvent value, $Res Function(_GameEvent) _then) = __$GameEventCopyWithImpl;
@override @useResult
$Res call({
 String type, String action, Map<String, dynamic>? params
});




}
/// @nodoc
class __$GameEventCopyWithImpl<$Res>
    implements _$GameEventCopyWith<$Res> {
  __$GameEventCopyWithImpl(this._self, this._then);

  final _GameEvent _self;
  final $Res Function(_GameEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? action = null,Object? params = freezed,}) {
  return _then(_GameEvent(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,params: freezed == params ? _self._params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
