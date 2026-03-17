import 'package:shared_preferences/shared_preferences.dart';

class SettingsStorage {
  static const String keyMusicEnabled = 'pref_music_enabled';
  static const String keySfxEnabled = 'pref_sfx_enabled';
  static const String keyVolume = 'pref_volume';
  static const String keyTextScale = 'pref_text_scale';
  static const String keyHighContrast = 'pref_high_contrast';
  static const String keyTtsRate = 'pref_tts_rate';
  static const String keyReduceAnimations = 'pref_reduce_animations';
  static const String keyActiveChildId = 'ui_active_child_id';
  static const String keyProgressDomainFilter = 'ui_progress_domain_filter';

  final SharedPreferences _prefs;

  SettingsStorage(this._prefs);

  bool get musicEnabled => _prefs.getBool(keyMusicEnabled) ?? true;
  Future<void> setMusicEnabled(bool value) => _prefs.setBool(keyMusicEnabled, value);

  bool get sfxEnabled => _prefs.getBool(keySfxEnabled) ?? true;
  Future<void> setSfxEnabled(bool value) => _prefs.setBool(keySfxEnabled, value);

  double get volume => _prefs.getDouble(keyVolume) ?? 0.8;
  Future<void> setVolume(double value) => _prefs.setDouble(keyVolume, value);

  double get textScale => _prefs.getDouble(keyTextScale) ?? 1.0;
  Future<void> setTextScale(double value) => _prefs.setDouble(keyTextScale, value);

  bool get highContrast => _prefs.getBool(keyHighContrast) ?? false;
  Future<void> setHighContrast(bool value) => _prefs.setBool(keyHighContrast, value);

  double get ttsRate => _prefs.getDouble(keyTtsRate) ?? 1.0;
  Future<void> setTtsRate(double value) => _prefs.setDouble(keyTtsRate, value);

  bool get reduceAnimations => _prefs.getBool(keyReduceAnimations) ?? false;
  Future<void> setReduceAnimations(bool value) => _prefs.setBool(keyReduceAnimations, value);

  int? get activeChildId => _prefs.getInt(keyActiveChildId);
  Future<void> setActiveChildId(int? value) => value != null 
    ? _prefs.setInt(keyActiveChildId, value) 
    : _prefs.remove(keyActiveChildId);

  String get progressDomainFilter => _prefs.getString(keyProgressDomainFilter) ?? 'All';
  Future<void> setProgressDomainFilter(String value) => _prefs.setString(keyProgressDomainFilter, value);
}
