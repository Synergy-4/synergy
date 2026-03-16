// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityPayloadImpl _$$ActivityPayloadImplFromJson(
  Map<String, dynamic> json,
) => _$ActivityPayloadImpl(
  version: json['version'] as String? ?? '1.0.0',
  theme: ThemeConfigData.fromJson(json['theme'] as Map<String, dynamic>),
  steps: (json['steps'] as List<dynamic>)
      .map((e) => StepConfig.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ActivityPayloadImplToJson(
  _$ActivityPayloadImpl instance,
) => <String, dynamic>{
  'version': instance.version,
  'theme': instance.theme,
  'steps': instance.steps,
};

_$ThemeConfigDataImpl _$$ThemeConfigDataImplFromJson(
  Map<String, dynamic> json,
) => _$ThemeConfigDataImpl(
  primaryColor: json['primary_color'] as String,
  secondaryColor: json['secondary_color'] as String,
  backgroundColor: json['background_color'] as String,
  cardColor: json['card_color'] as String,
  successColor: json['success_color'] as String? ?? '#4CAF50',
  errorColor: json['error_color'] as String? ?? '#F44336',
  headingFont: FontConfig.fromJson(
    json['heading_font'] as Map<String, dynamic>,
  ),
  bodyFont: FontConfig.fromJson(json['body_font'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ThemeConfigDataImplToJson(
  _$ThemeConfigDataImpl instance,
) => <String, dynamic>{
  'primary_color': instance.primaryColor,
  'secondary_color': instance.secondaryColor,
  'background_color': instance.backgroundColor,
  'card_color': instance.cardColor,
  'success_color': instance.successColor,
  'error_color': instance.errorColor,
  'heading_font': instance.headingFont,
  'body_font': instance.bodyFont,
};

_$FontConfigImpl _$$FontConfigImplFromJson(Map<String, dynamic> json) =>
    _$FontConfigImpl(
      family: json['family'] as String,
      size: (json['size'] as num).toDouble(),
      weight: json['weight'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$FontConfigImplToJson(_$FontConfigImpl instance) =>
    <String, dynamic>{
      'family': instance.family,
      'size': instance.size,
      'weight': instance.weight,
      'color': instance.color,
    };

_$StepConfigImpl _$$StepConfigImplFromJson(Map<String, dynamic> json) =>
    _$StepConfigImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      voiceoverText: json['voiceover_text'] as String?,
      gameConfig: json['game_config'] == null
          ? null
          : GameConfig.fromJson(json['game_config'] as Map<String, dynamic>),
      lottieUrl: json['lottie_url'] as String?,
    );

Map<String, dynamic> _$$StepConfigImplToJson(_$StepConfigImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'voiceover_text': instance.voiceoverText,
      'game_config': instance.gameConfig,
      'lottie_url': instance.lottieUrl,
    };

_$GameConfigImpl _$$GameConfigImplFromJson(Map<String, dynamic> json) =>
    _$GameConfigImpl(
      gameType: json['game_type'] as String,
      difficulty: json['difficulty'] as String,
      timeLimitSeconds: (json['time_limit_seconds'] as num?)?.toInt(),
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$GameConfigImplToJson(_$GameConfigImpl instance) =>
    <String, dynamic>{
      'game_type': instance.gameType,
      'difficulty': instance.difficulty,
      'time_limit_seconds': instance.timeLimitSeconds,
      'data': instance.data,
    };
