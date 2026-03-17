import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/settings_storage.dart';

part 'settings_provider.g.dart';

class AppSettings {
  final bool musicEnabled;
  final bool sfxEnabled;
  final double volume;
  final double textScale;
  final bool highContrast;
  final double ttsRate;
  final bool reduceAnimations;
  final String progressDomainFilter;

  AppSettings({
    this.musicEnabled = true,
    this.sfxEnabled = true,
    this.volume = 0.8,
    this.textScale = 1.0,
    this.highContrast = false,
    this.ttsRate = 1.0,
    this.reduceAnimations = false,
    this.progressDomainFilter = 'All',
  });

  AppSettings copyWith({
    bool? musicEnabled,
    bool? sfxEnabled,
    double? volume,
    double? textScale,
    bool? highContrast,
    double? ttsRate,
    bool? reduceAnimations,
    String? progressDomainFilter,
  }) {
    return AppSettings(
      musicEnabled: musicEnabled ?? this.musicEnabled,
      sfxEnabled: sfxEnabled ?? this.sfxEnabled,
      volume: volume ?? this.volume,
      textScale: textScale ?? this.textScale,
      highContrast: highContrast ?? this.highContrast,
      ttsRate: ttsRate ?? this.ttsRate,
      reduceAnimations: reduceAnimations ?? this.reduceAnimations,
      progressDomainFilter: progressDomainFilter ?? this.progressDomainFilter,
    );
  }
}

// Provider for SharedPreferences instance
@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  throw UnimplementedError(); // Initialized in main.dart
}

@Riverpod(keepAlive: true)
SettingsStorage settingsStorage(SettingsStorageRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return SettingsStorage(prefs);
}

@riverpod
class Settings extends _$Settings {
  @override
  AppSettings build() {
    final storage = ref.watch(settingsStorageProvider);
    return AppSettings(
      musicEnabled: storage.musicEnabled,
      sfxEnabled: storage.sfxEnabled,
      volume: storage.volume,
      textScale: storage.textScale,
      highContrast: storage.highContrast,
      ttsRate: storage.ttsRate,
      reduceAnimations: storage.reduceAnimations,
      progressDomainFilter: storage.progressDomainFilter,
    );
  }

  void setMusicEnabled(bool value) {
    state = state.copyWith(musicEnabled: value);
    ref.read(settingsStorageProvider).setMusicEnabled(value);
  }

  void setSfxEnabled(bool value) {
    state = state.copyWith(sfxEnabled: value);
    ref.read(settingsStorageProvider).setSfxEnabled(value);
  }

  Timer? _volumeTimer;

  void setVolume(double value) {
    state = state.copyWith(volume: value);
    _volumeTimer?.cancel();
    _volumeTimer = Timer(const Duration(milliseconds: 500), () {
      ref.read(settingsStorageProvider).setVolume(value);
    });
  }

  void setTextScale(double value) {
    state = state.copyWith(textScale: value);
    ref.read(settingsStorageProvider).setTextScale(value);
  }

  void setHighContrast(bool value) {
    state = state.copyWith(highContrast: value);
    ref.read(settingsStorageProvider).setHighContrast(value);
  }

  void setTtsRate(double value) {
    state = state.copyWith(ttsRate: value);
    ref.read(settingsStorageProvider).setTtsRate(value);
  }

  void setReduceAnimations(bool value) {
    state = state.copyWith(reduceAnimations: value);
    ref.read(settingsStorageProvider).setReduceAnimations(value);
  }

  void setProgressDomainFilter(String value) {
    state = state.copyWith(progressDomainFilter: value);
    ref.read(settingsStorageProvider).setProgressDomainFilter(value);
  }
}
