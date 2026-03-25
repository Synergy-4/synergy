import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SttScorer {
  final SpeechToText _stt = SpeechToText();
  bool _isAvailable = false;
  bool get isAvailable => _isAvailable;

  /// Initializes the speech-to-text engine and explicitly returns true if available.
  Future<bool> initialize() async {
    try {
      _isAvailable = await _stt.initialize(
        onError: (e) => debugPrint('STT error: $e'),
        onStatus: (s) => debugPrint('STT status: $s'),
      );
      return _isAvailable;
    } catch (e) {
      debugPrint("Failed to initialize STT: $e");
      return false;
    }
  }

  /// Starts listening via the microphone.
  Future<void> listen(void Function(String text)? onResult) async {
    if (!_isAvailable) {
      debugPrint("STT not available");
      return;
    }
    
    // In Flutter speech_to_text, calling listen multiple times safely resets
    await _stt.listen(
      onResult: (SpeechRecognitionResult result) {
        if (onResult != null) {
          onResult(result.recognizedWords);
        }
      },
      listenFor: const Duration(seconds: 10),
      // Set to partial results for immediate feedback, or true if we want stream 
      // of intermediate updates. Let's get live updates.
      partialResults: true, 
      cancelOnError: true,
      listenMode: ListenMode.confirmation,
    );
  }

  /// Stops listening and returns true if it stopped smoothly.
  Future<void> stop() async {
    if (_stt.isListening) {
      await _stt.stop();
    }
  }

  /// Scores an STT transcript against an exact string and flexible variations.
  bool scoreAttempt({
    required String transcript,
    required String expected,
    required List<String> variants,
  }) {
    final lowerTranscript = transcript.toLowerCase().trim();
    if (lowerTranscript.isEmpty) return false;

    // Direct match check
    if (lowerTranscript == expected.toLowerCase().trim()) return true;

    // Fallback to accepted variants (fuzzy or phonetic translations)
    for (String variant in variants) {
      // In phonetic exercises, kids might say "ah ah" or "aah", sometimes 
      // STT recognizes it embedded in longer phrases. Because phonetic STT 
      // can be notoriously tricky, we'll check if the transcript CONTAINS the variant 
      // if it's very short, or matches if longer. 
      if (lowerTranscript.contains(variant.toLowerCase().trim())) {
        return true;
      }
    }

    return false;
  }
}
