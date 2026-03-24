// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityPayload _$ActivityPayloadFromJson(Map<String, dynamic> json) =>
    _ActivityPayload(
      activityId: (json['activity_id'] as num?)?.toInt(),
      version: json['version'] as String? ?? '1.0.0',
      theme: ThemeConfigData.fromJson(json['theme'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => StepConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActivityPayloadToJson(_ActivityPayload instance) =>
    <String, dynamic>{
      'activity_id': instance.activityId,
      'version': instance.version,
      'theme': instance.theme,
      'steps': instance.steps,
    };

_ThemeConfigData _$ThemeConfigDataFromJson(Map<String, dynamic> json) =>
    _ThemeConfigData(
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

Map<String, dynamic> _$ThemeConfigDataToJson(_ThemeConfigData instance) =>
    <String, dynamic>{
      'primary_color': instance.primaryColor,
      'secondary_color': instance.secondaryColor,
      'background_color': instance.backgroundColor,
      'card_color': instance.cardColor,
      'success_color': instance.successColor,
      'error_color': instance.errorColor,
      'heading_font': instance.headingFont,
      'body_font': instance.bodyFont,
    };

_FontConfig _$FontConfigFromJson(Map<String, dynamic> json) => _FontConfig(
  family: json['family'] as String,
  size: (json['size'] as num).toDouble(),
  weight: json['weight'] as String,
  color: json['color'] as String,
);

Map<String, dynamic> _$FontConfigToJson(_FontConfig instance) =>
    <String, dynamic>{
      'family': instance.family,
      'size': instance.size,
      'weight': instance.weight,
      'color': instance.color,
    };

_StepConfig _$StepConfigFromJson(Map<String, dynamic> json) => _StepConfig(
  id: json['id'] as String,
  type: json['type'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  voiceoverText: json['voiceover_text'] as String?,
  voiceoverAudioUrl: json['voiceover_audio_url'] as String?,
  gameConfig: json['game_config'] == null
      ? null
      : GameConfig.fromJson(json['game_config'] as Map<String, dynamic>),
  lottieUrl: json['lottie_url'] as String?,
);

Map<String, dynamic> _$StepConfigToJson(_StepConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'voiceover_text': instance.voiceoverText,
      'voiceover_audio_url': instance.voiceoverAudioUrl,
      'game_config': instance.gameConfig,
      'lottie_url': instance.lottieUrl,
    };

_GameConfig _$GameConfigFromJson(Map<String, dynamic> json) => _GameConfig(
  gameType: json['game_type'] as String,
  difficulty: json['difficulty'] as String,
  timeLimitSeconds: (json['time_limit_seconds'] as num?)?.toInt(),
  parentInstruction: json['parent_instruction'] as String?,
  parentInstructionAudioUrl: json['parent_instruction_audio_url'] as String?,
  data: json['data'] as Map<String, dynamic>,
  onSuccess: json['on_success'] == null
      ? null
      : GameEvent.fromJson(json['on_success'] as Map<String, dynamic>),
  onFailure: json['on_failure'] == null
      ? null
      : GameEvent.fromJson(json['on_failure'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameConfigToJson(_GameConfig instance) =>
    <String, dynamic>{
      'game_type': instance.gameType,
      'difficulty': instance.difficulty,
      'time_limit_seconds': instance.timeLimitSeconds,
      'parent_instruction': instance.parentInstruction,
      'parent_instruction_audio_url': instance.parentInstructionAudioUrl,
      'data': instance.data,
      'on_success': instance.onSuccess,
      'on_failure': instance.onFailure,
    };

_GameEvent _$GameEventFromJson(Map<String, dynamic> json) => _GameEvent(
  type: json['type'] as String,
  action: json['action'] as String,
  params: json['params'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$GameEventToJson(_GameEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'action': instance.action,
      'params': instance.params,
    };
