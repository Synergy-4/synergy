// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ActivityPayload _$ActivityPayloadFromJson(Map<String, dynamic> json) {
  return _ActivityPayload.fromJson(json);
}

/// @nodoc
mixin _$ActivityPayload {
  String get version => throw _privateConstructorUsedError;
  ThemeConfigData get theme => throw _privateConstructorUsedError;
  List<StepConfig> get steps => throw _privateConstructorUsedError;

  /// Serializes this ActivityPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityPayloadCopyWith<ActivityPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityPayloadCopyWith<$Res> {
  factory $ActivityPayloadCopyWith(
    ActivityPayload value,
    $Res Function(ActivityPayload) then,
  ) = _$ActivityPayloadCopyWithImpl<$Res, ActivityPayload>;
  @useResult
  $Res call({String version, ThemeConfigData theme, List<StepConfig> steps});

  $ThemeConfigDataCopyWith<$Res> get theme;
}

/// @nodoc
class _$ActivityPayloadCopyWithImpl<$Res, $Val extends ActivityPayload>
    implements $ActivityPayloadCopyWith<$Res> {
  _$ActivityPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? theme = null,
    Object? steps = null,
  }) {
    return _then(
      _value.copyWith(
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            theme: null == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                      as ThemeConfigData,
            steps: null == steps
                ? _value.steps
                : steps // ignore: cast_nullable_to_non_nullable
                      as List<StepConfig>,
          )
          as $Val,
    );
  }

  /// Create a copy of ActivityPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeConfigDataCopyWith<$Res> get theme {
    return $ThemeConfigDataCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityPayloadImplCopyWith<$Res>
    implements $ActivityPayloadCopyWith<$Res> {
  factory _$$ActivityPayloadImplCopyWith(
    _$ActivityPayloadImpl value,
    $Res Function(_$ActivityPayloadImpl) then,
  ) = __$$ActivityPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, ThemeConfigData theme, List<StepConfig> steps});

  @override
  $ThemeConfigDataCopyWith<$Res> get theme;
}

/// @nodoc
class __$$ActivityPayloadImplCopyWithImpl<$Res>
    extends _$ActivityPayloadCopyWithImpl<$Res, _$ActivityPayloadImpl>
    implements _$$ActivityPayloadImplCopyWith<$Res> {
  __$$ActivityPayloadImplCopyWithImpl(
    _$ActivityPayloadImpl _value,
    $Res Function(_$ActivityPayloadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActivityPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? theme = null,
    Object? steps = null,
  }) {
    return _then(
      _$ActivityPayloadImpl(
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        theme: null == theme
            ? _value.theme
            : theme // ignore: cast_nullable_to_non_nullable
                  as ThemeConfigData,
        steps: null == steps
            ? _value._steps
            : steps // ignore: cast_nullable_to_non_nullable
                  as List<StepConfig>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityPayloadImpl implements _ActivityPayload {
  const _$ActivityPayloadImpl({
    this.version = '1.0.0',
    required this.theme,
    required final List<StepConfig> steps,
  }) : _steps = steps;

  factory _$ActivityPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityPayloadImplFromJson(json);

  @override
  @JsonKey()
  final String version;
  @override
  final ThemeConfigData theme;
  final List<StepConfig> _steps;
  @override
  List<StepConfig> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'ActivityPayload(version: $version, theme: $theme, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityPayloadImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    version,
    theme,
    const DeepCollectionEquality().hash(_steps),
  );

  /// Create a copy of ActivityPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityPayloadImplCopyWith<_$ActivityPayloadImpl> get copyWith =>
      __$$ActivityPayloadImplCopyWithImpl<_$ActivityPayloadImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityPayloadImplToJson(this);
  }
}

abstract class _ActivityPayload implements ActivityPayload {
  const factory _ActivityPayload({
    final String version,
    required final ThemeConfigData theme,
    required final List<StepConfig> steps,
  }) = _$ActivityPayloadImpl;

  factory _ActivityPayload.fromJson(Map<String, dynamic> json) =
      _$ActivityPayloadImpl.fromJson;

  @override
  String get version;
  @override
  ThemeConfigData get theme;
  @override
  List<StepConfig> get steps;

  /// Create a copy of ActivityPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityPayloadImplCopyWith<_$ActivityPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThemeConfigData _$ThemeConfigDataFromJson(Map<String, dynamic> json) {
  return _ThemeConfigData.fromJson(json);
}

/// @nodoc
mixin _$ThemeConfigData {
  @JsonKey(name: 'primary_color')
  String get primaryColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_color')
  String get secondaryColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_color')
  String get cardColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_color')
  String get successColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_color')
  String get errorColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'heading_font')
  FontConfig get headingFont => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_font')
  FontConfig get bodyFont => throw _privateConstructorUsedError;

  /// Serializes this ThemeConfigData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThemeConfigData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeConfigDataCopyWith<ThemeConfigData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeConfigDataCopyWith<$Res> {
  factory $ThemeConfigDataCopyWith(
    ThemeConfigData value,
    $Res Function(ThemeConfigData) then,
  ) = _$ThemeConfigDataCopyWithImpl<$Res, ThemeConfigData>;
  @useResult
  $Res call({
    @JsonKey(name: 'primary_color') String primaryColor,
    @JsonKey(name: 'secondary_color') String secondaryColor,
    @JsonKey(name: 'background_color') String backgroundColor,
    @JsonKey(name: 'card_color') String cardColor,
    @JsonKey(name: 'success_color') String successColor,
    @JsonKey(name: 'error_color') String errorColor,
    @JsonKey(name: 'heading_font') FontConfig headingFont,
    @JsonKey(name: 'body_font') FontConfig bodyFont,
  });

  $FontConfigCopyWith<$Res> get headingFont;
  $FontConfigCopyWith<$Res> get bodyFont;
}

/// @nodoc
class _$ThemeConfigDataCopyWithImpl<$Res, $Val extends ThemeConfigData>
    implements $ThemeConfigDataCopyWith<$Res> {
  _$ThemeConfigDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeConfigData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryColor = null,
    Object? secondaryColor = null,
    Object? backgroundColor = null,
    Object? cardColor = null,
    Object? successColor = null,
    Object? errorColor = null,
    Object? headingFont = null,
    Object? bodyFont = null,
  }) {
    return _then(
      _value.copyWith(
            primaryColor: null == primaryColor
                ? _value.primaryColor
                : primaryColor // ignore: cast_nullable_to_non_nullable
                      as String,
            secondaryColor: null == secondaryColor
                ? _value.secondaryColor
                : secondaryColor // ignore: cast_nullable_to_non_nullable
                      as String,
            backgroundColor: null == backgroundColor
                ? _value.backgroundColor
                : backgroundColor // ignore: cast_nullable_to_non_nullable
                      as String,
            cardColor: null == cardColor
                ? _value.cardColor
                : cardColor // ignore: cast_nullable_to_non_nullable
                      as String,
            successColor: null == successColor
                ? _value.successColor
                : successColor // ignore: cast_nullable_to_non_nullable
                      as String,
            errorColor: null == errorColor
                ? _value.errorColor
                : errorColor // ignore: cast_nullable_to_non_nullable
                      as String,
            headingFont: null == headingFont
                ? _value.headingFont
                : headingFont // ignore: cast_nullable_to_non_nullable
                      as FontConfig,
            bodyFont: null == bodyFont
                ? _value.bodyFont
                : bodyFont // ignore: cast_nullable_to_non_nullable
                      as FontConfig,
          )
          as $Val,
    );
  }

  /// Create a copy of ThemeConfigData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FontConfigCopyWith<$Res> get headingFont {
    return $FontConfigCopyWith<$Res>(_value.headingFont, (value) {
      return _then(_value.copyWith(headingFont: value) as $Val);
    });
  }

  /// Create a copy of ThemeConfigData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FontConfigCopyWith<$Res> get bodyFont {
    return $FontConfigCopyWith<$Res>(_value.bodyFont, (value) {
      return _then(_value.copyWith(bodyFont: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThemeConfigDataImplCopyWith<$Res>
    implements $ThemeConfigDataCopyWith<$Res> {
  factory _$$ThemeConfigDataImplCopyWith(
    _$ThemeConfigDataImpl value,
    $Res Function(_$ThemeConfigDataImpl) then,
  ) = __$$ThemeConfigDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'primary_color') String primaryColor,
    @JsonKey(name: 'secondary_color') String secondaryColor,
    @JsonKey(name: 'background_color') String backgroundColor,
    @JsonKey(name: 'card_color') String cardColor,
    @JsonKey(name: 'success_color') String successColor,
    @JsonKey(name: 'error_color') String errorColor,
    @JsonKey(name: 'heading_font') FontConfig headingFont,
    @JsonKey(name: 'body_font') FontConfig bodyFont,
  });

  @override
  $FontConfigCopyWith<$Res> get headingFont;
  @override
  $FontConfigCopyWith<$Res> get bodyFont;
}

/// @nodoc
class __$$ThemeConfigDataImplCopyWithImpl<$Res>
    extends _$ThemeConfigDataCopyWithImpl<$Res, _$ThemeConfigDataImpl>
    implements _$$ThemeConfigDataImplCopyWith<$Res> {
  __$$ThemeConfigDataImplCopyWithImpl(
    _$ThemeConfigDataImpl _value,
    $Res Function(_$ThemeConfigDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThemeConfigData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryColor = null,
    Object? secondaryColor = null,
    Object? backgroundColor = null,
    Object? cardColor = null,
    Object? successColor = null,
    Object? errorColor = null,
    Object? headingFont = null,
    Object? bodyFont = null,
  }) {
    return _then(
      _$ThemeConfigDataImpl(
        primaryColor: null == primaryColor
            ? _value.primaryColor
            : primaryColor // ignore: cast_nullable_to_non_nullable
                  as String,
        secondaryColor: null == secondaryColor
            ? _value.secondaryColor
            : secondaryColor // ignore: cast_nullable_to_non_nullable
                  as String,
        backgroundColor: null == backgroundColor
            ? _value.backgroundColor
            : backgroundColor // ignore: cast_nullable_to_non_nullable
                  as String,
        cardColor: null == cardColor
            ? _value.cardColor
            : cardColor // ignore: cast_nullable_to_non_nullable
                  as String,
        successColor: null == successColor
            ? _value.successColor
            : successColor // ignore: cast_nullable_to_non_nullable
                  as String,
        errorColor: null == errorColor
            ? _value.errorColor
            : errorColor // ignore: cast_nullable_to_non_nullable
                  as String,
        headingFont: null == headingFont
            ? _value.headingFont
            : headingFont // ignore: cast_nullable_to_non_nullable
                  as FontConfig,
        bodyFont: null == bodyFont
            ? _value.bodyFont
            : bodyFont // ignore: cast_nullable_to_non_nullable
                  as FontConfig,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeConfigDataImpl implements _ThemeConfigData {
  const _$ThemeConfigDataImpl({
    @JsonKey(name: 'primary_color') required this.primaryColor,
    @JsonKey(name: 'secondary_color') required this.secondaryColor,
    @JsonKey(name: 'background_color') required this.backgroundColor,
    @JsonKey(name: 'card_color') required this.cardColor,
    @JsonKey(name: 'success_color') this.successColor = '#4CAF50',
    @JsonKey(name: 'error_color') this.errorColor = '#F44336',
    @JsonKey(name: 'heading_font') required this.headingFont,
    @JsonKey(name: 'body_font') required this.bodyFont,
  });

  factory _$ThemeConfigDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeConfigDataImplFromJson(json);

  @override
  @JsonKey(name: 'primary_color')
  final String primaryColor;
  @override
  @JsonKey(name: 'secondary_color')
  final String secondaryColor;
  @override
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @override
  @JsonKey(name: 'card_color')
  final String cardColor;
  @override
  @JsonKey(name: 'success_color')
  final String successColor;
  @override
  @JsonKey(name: 'error_color')
  final String errorColor;
  @override
  @JsonKey(name: 'heading_font')
  final FontConfig headingFont;
  @override
  @JsonKey(name: 'body_font')
  final FontConfig bodyFont;

  @override
  String toString() {
    return 'ThemeConfigData(primaryColor: $primaryColor, secondaryColor: $secondaryColor, backgroundColor: $backgroundColor, cardColor: $cardColor, successColor: $successColor, errorColor: $errorColor, headingFont: $headingFont, bodyFont: $bodyFont)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeConfigDataImpl &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.secondaryColor, secondaryColor) ||
                other.secondaryColor == secondaryColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.cardColor, cardColor) ||
                other.cardColor == cardColor) &&
            (identical(other.successColor, successColor) ||
                other.successColor == successColor) &&
            (identical(other.errorColor, errorColor) ||
                other.errorColor == errorColor) &&
            (identical(other.headingFont, headingFont) ||
                other.headingFont == headingFont) &&
            (identical(other.bodyFont, bodyFont) ||
                other.bodyFont == bodyFont));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    primaryColor,
    secondaryColor,
    backgroundColor,
    cardColor,
    successColor,
    errorColor,
    headingFont,
    bodyFont,
  );

  /// Create a copy of ThemeConfigData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeConfigDataImplCopyWith<_$ThemeConfigDataImpl> get copyWith =>
      __$$ThemeConfigDataImplCopyWithImpl<_$ThemeConfigDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeConfigDataImplToJson(this);
  }
}

abstract class _ThemeConfigData implements ThemeConfigData {
  const factory _ThemeConfigData({
    @JsonKey(name: 'primary_color') required final String primaryColor,
    @JsonKey(name: 'secondary_color') required final String secondaryColor,
    @JsonKey(name: 'background_color') required final String backgroundColor,
    @JsonKey(name: 'card_color') required final String cardColor,
    @JsonKey(name: 'success_color') final String successColor,
    @JsonKey(name: 'error_color') final String errorColor,
    @JsonKey(name: 'heading_font') required final FontConfig headingFont,
    @JsonKey(name: 'body_font') required final FontConfig bodyFont,
  }) = _$ThemeConfigDataImpl;

  factory _ThemeConfigData.fromJson(Map<String, dynamic> json) =
      _$ThemeConfigDataImpl.fromJson;

  @override
  @JsonKey(name: 'primary_color')
  String get primaryColor;
  @override
  @JsonKey(name: 'secondary_color')
  String get secondaryColor;
  @override
  @JsonKey(name: 'background_color')
  String get backgroundColor;
  @override
  @JsonKey(name: 'card_color')
  String get cardColor;
  @override
  @JsonKey(name: 'success_color')
  String get successColor;
  @override
  @JsonKey(name: 'error_color')
  String get errorColor;
  @override
  @JsonKey(name: 'heading_font')
  FontConfig get headingFont;
  @override
  @JsonKey(name: 'body_font')
  FontConfig get bodyFont;

  /// Create a copy of ThemeConfigData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeConfigDataImplCopyWith<_$ThemeConfigDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FontConfig _$FontConfigFromJson(Map<String, dynamic> json) {
  return _FontConfig.fromJson(json);
}

/// @nodoc
mixin _$FontConfig {
  String get family => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  /// Serializes this FontConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FontConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FontConfigCopyWith<FontConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontConfigCopyWith<$Res> {
  factory $FontConfigCopyWith(
    FontConfig value,
    $Res Function(FontConfig) then,
  ) = _$FontConfigCopyWithImpl<$Res, FontConfig>;
  @useResult
  $Res call({String family, double size, String weight, String color});
}

/// @nodoc
class _$FontConfigCopyWithImpl<$Res, $Val extends FontConfig>
    implements $FontConfigCopyWith<$Res> {
  _$FontConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FontConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? size = null,
    Object? weight = null,
    Object? color = null,
  }) {
    return _then(
      _value.copyWith(
            family: null == family
                ? _value.family
                : family // ignore: cast_nullable_to_non_nullable
                      as String,
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as double,
            weight: null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as String,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FontConfigImplCopyWith<$Res>
    implements $FontConfigCopyWith<$Res> {
  factory _$$FontConfigImplCopyWith(
    _$FontConfigImpl value,
    $Res Function(_$FontConfigImpl) then,
  ) = __$$FontConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String family, double size, String weight, String color});
}

/// @nodoc
class __$$FontConfigImplCopyWithImpl<$Res>
    extends _$FontConfigCopyWithImpl<$Res, _$FontConfigImpl>
    implements _$$FontConfigImplCopyWith<$Res> {
  __$$FontConfigImplCopyWithImpl(
    _$FontConfigImpl _value,
    $Res Function(_$FontConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FontConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? size = null,
    Object? weight = null,
    Object? color = null,
  }) {
    return _then(
      _$FontConfigImpl(
        family: null == family
            ? _value.family
            : family // ignore: cast_nullable_to_non_nullable
                  as String,
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as double,
        weight: null == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as String,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FontConfigImpl implements _FontConfig {
  const _$FontConfigImpl({
    required this.family,
    required this.size,
    required this.weight,
    required this.color,
  });

  factory _$FontConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$FontConfigImplFromJson(json);

  @override
  final String family;
  @override
  final double size;
  @override
  final String weight;
  @override
  final String color;

  @override
  String toString() {
    return 'FontConfig(family: $family, size: $size, weight: $weight, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontConfigImpl &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, family, size, weight, color);

  /// Create a copy of FontConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FontConfigImplCopyWith<_$FontConfigImpl> get copyWith =>
      __$$FontConfigImplCopyWithImpl<_$FontConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FontConfigImplToJson(this);
  }
}

abstract class _FontConfig implements FontConfig {
  const factory _FontConfig({
    required final String family,
    required final double size,
    required final String weight,
    required final String color,
  }) = _$FontConfigImpl;

  factory _FontConfig.fromJson(Map<String, dynamic> json) =
      _$FontConfigImpl.fromJson;

  @override
  String get family;
  @override
  double get size;
  @override
  String get weight;
  @override
  String get color;

  /// Create a copy of FontConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FontConfigImplCopyWith<_$FontConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StepConfig _$StepConfigFromJson(Map<String, dynamic> json) {
  return _StepConfig.fromJson(json);
}

/// @nodoc
mixin _$StepConfig {
  String get id => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // "instruction", "game", "reward"
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'voiceover_text')
  String? get voiceoverText => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_config')
  GameConfig? get gameConfig => throw _privateConstructorUsedError;
  @JsonKey(name: 'lottie_url')
  String? get lottieUrl => throw _privateConstructorUsedError;

  /// Serializes this StepConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepConfigCopyWith<StepConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepConfigCopyWith<$Res> {
  factory $StepConfigCopyWith(
    StepConfig value,
    $Res Function(StepConfig) then,
  ) = _$StepConfigCopyWithImpl<$Res, StepConfig>;
  @useResult
  $Res call({
    String id,
    String type,
    String title,
    String? description,
    @JsonKey(name: 'voiceover_text') String? voiceoverText,
    @JsonKey(name: 'game_config') GameConfig? gameConfig,
    @JsonKey(name: 'lottie_url') String? lottieUrl,
  });

  $GameConfigCopyWith<$Res>? get gameConfig;
}

/// @nodoc
class _$StepConfigCopyWithImpl<$Res, $Val extends StepConfig>
    implements $StepConfigCopyWith<$Res> {
  _$StepConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
    Object? voiceoverText = freezed,
    Object? gameConfig = freezed,
    Object? lottieUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            voiceoverText: freezed == voiceoverText
                ? _value.voiceoverText
                : voiceoverText // ignore: cast_nullable_to_non_nullable
                      as String?,
            gameConfig: freezed == gameConfig
                ? _value.gameConfig
                : gameConfig // ignore: cast_nullable_to_non_nullable
                      as GameConfig?,
            lottieUrl: freezed == lottieUrl
                ? _value.lottieUrl
                : lottieUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of StepConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameConfigCopyWith<$Res>? get gameConfig {
    if (_value.gameConfig == null) {
      return null;
    }

    return $GameConfigCopyWith<$Res>(_value.gameConfig!, (value) {
      return _then(_value.copyWith(gameConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StepConfigImplCopyWith<$Res>
    implements $StepConfigCopyWith<$Res> {
  factory _$$StepConfigImplCopyWith(
    _$StepConfigImpl value,
    $Res Function(_$StepConfigImpl) then,
  ) = __$$StepConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String type,
    String title,
    String? description,
    @JsonKey(name: 'voiceover_text') String? voiceoverText,
    @JsonKey(name: 'game_config') GameConfig? gameConfig,
    @JsonKey(name: 'lottie_url') String? lottieUrl,
  });

  @override
  $GameConfigCopyWith<$Res>? get gameConfig;
}

/// @nodoc
class __$$StepConfigImplCopyWithImpl<$Res>
    extends _$StepConfigCopyWithImpl<$Res, _$StepConfigImpl>
    implements _$$StepConfigImplCopyWith<$Res> {
  __$$StepConfigImplCopyWithImpl(
    _$StepConfigImpl _value,
    $Res Function(_$StepConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StepConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
    Object? voiceoverText = freezed,
    Object? gameConfig = freezed,
    Object? lottieUrl = freezed,
  }) {
    return _then(
      _$StepConfigImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        voiceoverText: freezed == voiceoverText
            ? _value.voiceoverText
            : voiceoverText // ignore: cast_nullable_to_non_nullable
                  as String?,
        gameConfig: freezed == gameConfig
            ? _value.gameConfig
            : gameConfig // ignore: cast_nullable_to_non_nullable
                  as GameConfig?,
        lottieUrl: freezed == lottieUrl
            ? _value.lottieUrl
            : lottieUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StepConfigImpl implements _StepConfig {
  const _$StepConfigImpl({
    required this.id,
    required this.type,
    required this.title,
    this.description,
    @JsonKey(name: 'voiceover_text') this.voiceoverText,
    @JsonKey(name: 'game_config') this.gameConfig,
    @JsonKey(name: 'lottie_url') this.lottieUrl,
  });

  factory _$StepConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepConfigImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  // "instruction", "game", "reward"
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'voiceover_text')
  final String? voiceoverText;
  @override
  @JsonKey(name: 'game_config')
  final GameConfig? gameConfig;
  @override
  @JsonKey(name: 'lottie_url')
  final String? lottieUrl;

  @override
  String toString() {
    return 'StepConfig(id: $id, type: $type, title: $title, description: $description, voiceoverText: $voiceoverText, gameConfig: $gameConfig, lottieUrl: $lottieUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.voiceoverText, voiceoverText) ||
                other.voiceoverText == voiceoverText) &&
            (identical(other.gameConfig, gameConfig) ||
                other.gameConfig == gameConfig) &&
            (identical(other.lottieUrl, lottieUrl) ||
                other.lottieUrl == lottieUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    title,
    description,
    voiceoverText,
    gameConfig,
    lottieUrl,
  );

  /// Create a copy of StepConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepConfigImplCopyWith<_$StepConfigImpl> get copyWith =>
      __$$StepConfigImplCopyWithImpl<_$StepConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepConfigImplToJson(this);
  }
}

abstract class _StepConfig implements StepConfig {
  const factory _StepConfig({
    required final String id,
    required final String type,
    required final String title,
    final String? description,
    @JsonKey(name: 'voiceover_text') final String? voiceoverText,
    @JsonKey(name: 'game_config') final GameConfig? gameConfig,
    @JsonKey(name: 'lottie_url') final String? lottieUrl,
  }) = _$StepConfigImpl;

  factory _StepConfig.fromJson(Map<String, dynamic> json) =
      _$StepConfigImpl.fromJson;

  @override
  String get id;
  @override
  String get type; // "instruction", "game", "reward"
  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'voiceover_text')
  String? get voiceoverText;
  @override
  @JsonKey(name: 'game_config')
  GameConfig? get gameConfig;
  @override
  @JsonKey(name: 'lottie_url')
  String? get lottieUrl;

  /// Create a copy of StepConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepConfigImplCopyWith<_$StepConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameConfig _$GameConfigFromJson(Map<String, dynamic> json) {
  return _GameConfig.fromJson(json);
}

/// @nodoc
mixin _$GameConfig {
  @JsonKey(name: 'game_type')
  String get gameType => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_limit_seconds')
  int? get timeLimitSeconds => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_success')
  GameEvent? get onSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_failure')
  GameEvent? get onFailure => throw _privateConstructorUsedError;

  /// Serializes this GameConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameConfigCopyWith<GameConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameConfigCopyWith<$Res> {
  factory $GameConfigCopyWith(
    GameConfig value,
    $Res Function(GameConfig) then,
  ) = _$GameConfigCopyWithImpl<$Res, GameConfig>;
  @useResult
  $Res call({
    @JsonKey(name: 'game_type') String gameType,
    String difficulty,
    @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
    Map<String, dynamic> data,
    @JsonKey(name: 'on_success') GameEvent? onSuccess,
    @JsonKey(name: 'on_failure') GameEvent? onFailure,
  });

  $GameEventCopyWith<$Res>? get onSuccess;
  $GameEventCopyWith<$Res>? get onFailure;
}

/// @nodoc
class _$GameConfigCopyWithImpl<$Res, $Val extends GameConfig>
    implements $GameConfigCopyWith<$Res> {
  _$GameConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
    Object? difficulty = null,
    Object? timeLimitSeconds = freezed,
    Object? data = null,
    Object? onSuccess = freezed,
    Object? onFailure = freezed,
  }) {
    return _then(
      _value.copyWith(
            gameType: null == gameType
                ? _value.gameType
                : gameType // ignore: cast_nullable_to_non_nullable
                      as String,
            difficulty: null == difficulty
                ? _value.difficulty
                : difficulty // ignore: cast_nullable_to_non_nullable
                      as String,
            timeLimitSeconds: freezed == timeLimitSeconds
                ? _value.timeLimitSeconds
                : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
                      as int?,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            onSuccess: freezed == onSuccess
                ? _value.onSuccess
                : onSuccess // ignore: cast_nullable_to_non_nullable
                      as GameEvent?,
            onFailure: freezed == onFailure
                ? _value.onFailure
                : onFailure // ignore: cast_nullable_to_non_nullable
                      as GameEvent?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameEventCopyWith<$Res>? get onSuccess {
    if (_value.onSuccess == null) {
      return null;
    }

    return $GameEventCopyWith<$Res>(_value.onSuccess!, (value) {
      return _then(_value.copyWith(onSuccess: value) as $Val);
    });
  }

  /// Create a copy of GameConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameEventCopyWith<$Res>? get onFailure {
    if (_value.onFailure == null) {
      return null;
    }

    return $GameEventCopyWith<$Res>(_value.onFailure!, (value) {
      return _then(_value.copyWith(onFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameConfigImplCopyWith<$Res>
    implements $GameConfigCopyWith<$Res> {
  factory _$$GameConfigImplCopyWith(
    _$GameConfigImpl value,
    $Res Function(_$GameConfigImpl) then,
  ) = __$$GameConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'game_type') String gameType,
    String difficulty,
    @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
    Map<String, dynamic> data,
    @JsonKey(name: 'on_success') GameEvent? onSuccess,
    @JsonKey(name: 'on_failure') GameEvent? onFailure,
  });

  @override
  $GameEventCopyWith<$Res>? get onSuccess;
  @override
  $GameEventCopyWith<$Res>? get onFailure;
}

/// @nodoc
class __$$GameConfigImplCopyWithImpl<$Res>
    extends _$GameConfigCopyWithImpl<$Res, _$GameConfigImpl>
    implements _$$GameConfigImplCopyWith<$Res> {
  __$$GameConfigImplCopyWithImpl(
    _$GameConfigImpl _value,
    $Res Function(_$GameConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
    Object? difficulty = null,
    Object? timeLimitSeconds = freezed,
    Object? data = null,
    Object? onSuccess = freezed,
    Object? onFailure = freezed,
  }) {
    return _then(
      _$GameConfigImpl(
        gameType: null == gameType
            ? _value.gameType
            : gameType // ignore: cast_nullable_to_non_nullable
                  as String,
        difficulty: null == difficulty
            ? _value.difficulty
            : difficulty // ignore: cast_nullable_to_non_nullable
                  as String,
        timeLimitSeconds: freezed == timeLimitSeconds
            ? _value.timeLimitSeconds
            : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
                  as int?,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        onSuccess: freezed == onSuccess
            ? _value.onSuccess
            : onSuccess // ignore: cast_nullable_to_non_nullable
                  as GameEvent?,
        onFailure: freezed == onFailure
            ? _value.onFailure
            : onFailure // ignore: cast_nullable_to_non_nullable
                  as GameEvent?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameConfigImpl implements _GameConfig {
  const _$GameConfigImpl({
    @JsonKey(name: 'game_type') required this.gameType,
    required this.difficulty,
    @JsonKey(name: 'time_limit_seconds') this.timeLimitSeconds,
    required final Map<String, dynamic> data,
    @JsonKey(name: 'on_success') this.onSuccess,
    @JsonKey(name: 'on_failure') this.onFailure,
  }) : _data = data;

  factory _$GameConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameConfigImplFromJson(json);

  @override
  @JsonKey(name: 'game_type')
  final String gameType;
  @override
  final String difficulty;
  @override
  @JsonKey(name: 'time_limit_seconds')
  final int? timeLimitSeconds;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey(name: 'on_success')
  final GameEvent? onSuccess;
  @override
  @JsonKey(name: 'on_failure')
  final GameEvent? onFailure;

  @override
  String toString() {
    return 'GameConfig(gameType: $gameType, difficulty: $difficulty, timeLimitSeconds: $timeLimitSeconds, data: $data, onSuccess: $onSuccess, onFailure: $onFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameConfigImpl &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    gameType,
    difficulty,
    timeLimitSeconds,
    const DeepCollectionEquality().hash(_data),
    onSuccess,
    onFailure,
  );

  /// Create a copy of GameConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameConfigImplCopyWith<_$GameConfigImpl> get copyWith =>
      __$$GameConfigImplCopyWithImpl<_$GameConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameConfigImplToJson(this);
  }
}

abstract class _GameConfig implements GameConfig {
  const factory _GameConfig({
    @JsonKey(name: 'game_type') required final String gameType,
    required final String difficulty,
    @JsonKey(name: 'time_limit_seconds') final int? timeLimitSeconds,
    required final Map<String, dynamic> data,
    @JsonKey(name: 'on_success') final GameEvent? onSuccess,
    @JsonKey(name: 'on_failure') final GameEvent? onFailure,
  }) = _$GameConfigImpl;

  factory _GameConfig.fromJson(Map<String, dynamic> json) =
      _$GameConfigImpl.fromJson;

  @override
  @JsonKey(name: 'game_type')
  String get gameType;
  @override
  String get difficulty;
  @override
  @JsonKey(name: 'time_limit_seconds')
  int? get timeLimitSeconds;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(name: 'on_success')
  GameEvent? get onSuccess;
  @override
  @JsonKey(name: 'on_failure')
  GameEvent? get onFailure;

  /// Create a copy of GameConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameConfigImplCopyWith<_$GameConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameEvent _$GameEventFromJson(Map<String, dynamic> json) {
  return _GameEvent.fromJson(json);
}

/// @nodoc
mixin _$GameEvent {
  String get type =>
      throw _privateConstructorUsedError; // "animation", "sound", "navigation"
  String get action => throw _privateConstructorUsedError;
  Map<String, dynamic>? get params => throw _privateConstructorUsedError;

  /// Serializes this GameEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameEventCopyWith<GameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
  @useResult
  $Res call({String type, String action, Map<String, dynamic>? params});
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? action = null,
    Object? params = freezed,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            action: null == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                      as String,
            params: freezed == params
                ? _value.params
                : params // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameEventImplCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$GameEventImplCopyWith(
    _$GameEventImpl value,
    $Res Function(_$GameEventImpl) then,
  ) = __$$GameEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String action, Map<String, dynamic>? params});
}

/// @nodoc
class __$$GameEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameEventImpl>
    implements _$$GameEventImplCopyWith<$Res> {
  __$$GameEventImplCopyWithImpl(
    _$GameEventImpl _value,
    $Res Function(_$GameEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? action = null,
    Object? params = freezed,
  }) {
    return _then(
      _$GameEventImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        action: null == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as String,
        params: freezed == params
            ? _value._params
            : params // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameEventImpl implements _GameEvent {
  const _$GameEventImpl({
    required this.type,
    required this.action,
    final Map<String, dynamic>? params,
  }) : _params = params;

  factory _$GameEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameEventImplFromJson(json);

  @override
  final String type;
  // "animation", "sound", "navigation"
  @override
  final String action;
  final Map<String, dynamic>? _params;
  @override
  Map<String, dynamic>? get params {
    final value = _params;
    if (value == null) return null;
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GameEvent(type: $type, action: $action, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    action,
    const DeepCollectionEquality().hash(_params),
  );

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEventImplCopyWith<_$GameEventImpl> get copyWith =>
      __$$GameEventImplCopyWithImpl<_$GameEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameEventImplToJson(this);
  }
}

abstract class _GameEvent implements GameEvent {
  const factory _GameEvent({
    required final String type,
    required final String action,
    final Map<String, dynamic>? params,
  }) = _$GameEventImpl;

  factory _GameEvent.fromJson(Map<String, dynamic> json) =
      _$GameEventImpl.fromJson;

  @override
  String get type; // "animation", "sound", "navigation"
  @override
  String get action;
  @override
  Map<String, dynamic>? get params;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEventImplCopyWith<_$GameEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
