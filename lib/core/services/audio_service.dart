import 'package:just_audio/just_audio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'audio_service.g.dart';

class AudioService {
  final AudioPlayer _player = AudioPlayer();
  bool _isDisposed = false;

  Future<void> playUrl(String url) async {
    if (_isDisposed) return;
    try {
      if (_player.playing) {
        await _player.stop();
      }
      await _player.setUrl(url);
      await _player.play();
    } catch (e) {
      // Handle playback errors silently or log them
      print("Error playing audio: $e");
    }
  }

  Future<void> stop() async {
    if (_isDisposed) return;
    try {
      if (_player.playing) {
        await _player.stop();
      }
    } catch (e) {
      print("Error stopping audio: $e");
    }
  }

  void dispose() {
    _isDisposed = true;
    _player.dispose();
  }
}

@riverpod
AudioService audioService(Ref ref) {
  final service = AudioService();
  ref.onDispose(() {
    service.dispose();
  });
  return service;
}
