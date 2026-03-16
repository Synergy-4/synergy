import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_models.freezed.dart';
part 'activity_models.g.dart';

@freezed
class ActivityPayload with _$ActivityPayload {
  const factory ActivityPayload({
    @Default('1.0.0') String version,
    required ThemeConfigData theme,
    required List<StepConfig> steps,
  }) = _ActivityPayload;

  factory ActivityPayload.fromJson(Map<String, dynamic> json) =>
      _$ActivityPayloadFromJson(json);
}

@freezed
class ThemeConfigData with _$ThemeConfigData {
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
class FontConfig with _$FontConfig {
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
class StepConfig with _$StepConfig {
  const factory StepConfig({
    required String id,
    required String type, // "instruction", "game", "reward"
    required String title,
    String? description,
    @JsonKey(name: 'voiceover_text') String? voiceoverText,
    @JsonKey(name: 'game_config') GameConfig? gameConfig,
    @JsonKey(name: 'lottie_url') String? lottieUrl,
  }) = _StepConfig;

  factory StepConfig.fromJson(Map<String, dynamic> json) =>
      _$StepConfigFromJson(json);
}

@freezed
class GameConfig with _$GameConfig {
  const factory GameConfig({
    @JsonKey(name: 'game_type') required String gameType, // "matching", "sorting", "tracing"
    required String difficulty,
    @JsonKey(name: 'time_limit_seconds') int? timeLimitSeconds,
    required Map<String, dynamic> data,
  }) = _GameConfig;

  factory GameConfig.fromJson(Map<String, dynamic> json) =>
      _$GameConfigFromJson(json);
}
