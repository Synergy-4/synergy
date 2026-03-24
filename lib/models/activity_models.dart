import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_models.freezed.dart';
part 'activity_models.g.dart';

@freezed
abstract class ActivityPayload with _$ActivityPayload {
  const factory ActivityPayload({
    @JsonKey(name: 'activity_id') int? activityId,
    @Default('1.0.0') String version,
    required ThemeConfigData theme,
    required List<StepConfig> steps,
  }) = _ActivityPayload;

  factory ActivityPayload.fromJson(Map<String, dynamic> json) =>
      _$ActivityPayloadFromJson(json);
}

@freezed
abstract class ThemeConfigData with _$ThemeConfigData {
  const factory ThemeConfigData({
    @JsonKey(name: 'primary_color') required String primaryColor,
    @JsonKey(name: 'secondary_color') required String secondaryColor,
    @JsonKey(name: 'background_color') required String backgroundColor,
    @JsonKey(name: 'card_color') required String cardColor,
    @JsonKey(name: 'success_color') @Default('#4CAF50') String successColor,
    @JsonKey(name: 'error_color') @Default('#F44336') String errorColor,
    @JsonKey(name: 'heading_font') required FontConfig headingFont,
    @JsonKey(name: 'body_font') required FontConfig bodyFont,
  }) = _ThemeConfigData;

  factory ThemeConfigData.fromJson(Map<String, dynamic> json) =>
      _$ThemeConfigDataFromJson(json);
}

@freezed
abstract class FontConfig with _$FontConfig {
  const factory FontConfig({
    required String family,
    required double size,
    required String weight,
    required String color,
  }) = _FontConfig;

  factory FontConfig.fromJson(Map<String, dynamic> json) =>
      _$FontConfigFromJson(json);
}

@freezed
abstract class StepConfig with _$StepConfig {
  const factory StepConfig({
    required String id,
    required String type, // "instruction", "game", "reward"
    required String title,
    String? description,
    @JsonKey(name: 'voiceover_text') String? voiceoverText,
    @JsonKey(name: 'voiceover_audio_url') String? voiceoverAudioUrl,
    @JsonKey(name: 'game_config') GameConfig? gameConfig,
    @JsonKey(name: 'lottie_url') String? lottieUrl,
  }) = _StepConfig;

  factory StepConfig.fromJson(Map<String, dynamic> json) =>
      _$StepConfigFromJson(json);
}

@freezed
abstract class GameConfig with _$GameConfig {
  const factory GameConfig({
    @JsonKey(name: 'game_type') required String gameType,
    required String difficulty,
    @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
    @JsonKey(name: 'parent_instruction') String? parentInstruction,
    @JsonKey(name: 'parent_instruction_audio_url') String? parentInstructionAudioUrl,
    required Map<String, dynamic> data,
    @JsonKey(name: 'on_success') GameEvent? onSuccess,
    @JsonKey(name: 'on_failure') GameEvent? onFailure,
  }) = _GameConfig;

  factory GameConfig.fromJson(Map<String, dynamic> json) =>
      _$GameConfigFromJson(json);
}

@freezed
abstract class GameEvent with _$GameEvent {
  const factory GameEvent({
    required String type, // "animation", "sound", "navigation"
    required String action,
    Map<String, dynamic>? params,
  }) = _GameEvent;

  factory GameEvent.fromJson(Map<String, dynamic> json) =>
      _$GameEventFromJson(json);
}
