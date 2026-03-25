import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../models/activity_models.dart';
import '../../../core/services/audio_service.dart';
import '../engine/stt_scorer.dart';

class PhonicsPhoneticsGame extends ConsumerStatefulWidget {
  final GameConfig config;
  final VoidCallback onComplete;

  const PhonicsPhoneticsGame({
    super.key,
    required this.config,
    required this.onComplete,
  });

  @override
  ConsumerState<PhonicsPhoneticsGame> createState() =>
      _PhonicsPhoneticsGameState();
}

class _PhonicsPhoneticsGameState extends ConsumerState<PhonicsPhoneticsGame> {
  int _currentTrialIndex = 0;
  List<dynamic> _trials = [];
  bool _isCorrect = false;
  
  // STT state
  final SttScorer _sttScorer = SttScorer();
  bool _isListening = false;
  String _lastWords = '';

  @override
  void initState() {
    super.initState();
    _trials = widget.config.data['trials'] ?? [];
    _initStt();
  }

  Future<void> _initStt() async {
    await _sttScorer.initialize();
  }

  void _startListening(Map<String, dynamic> currentTrial) async {
    if (_isListening) return;

    setState(() {
      _isListening = true;
      _lastWords = '';
      _isCorrect = false;
    });

    await _sttScorer.listen((resultWords) {
      if (!mounted) return;
      setState(() {
        _lastWords = resultWords;
      });

      // Score the result dynamically
      final expected = currentTrial['stt_expected'] as String? ?? '';
      final variants = (currentTrial['stt_accepted_variants'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ?? [];

      final isMatch = _sttScorer.scoreAttempt(
        transcript: _lastWords,
        expected: expected,
        variants: variants,
      );

      if (isMatch && !_isCorrect) {
        _handleSuccess();
      }
    });
  }

  void _stopListening() async {
    if (!_isListening) return;
    await _sttScorer.stop();
    if (mounted) {
      setState(() {
        _isListening = false;
      });
    }
  }

  void _handleSuccess() {
    setState(() {
      _isCorrect = true;
      _isListening = false;
    });
    _sttScorer.stop();

    // Move to next trial after delay
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      if (_currentTrialIndex < _trials.length - 1) {
        setState(() {
          _currentTrialIndex++;
          _isCorrect = false;
          _lastWords = '';
        });
      } else {
        widget.onComplete();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_trials.isEmpty) {
      return Center(
        child: ElevatedButton(
          onPressed: widget.onComplete,
          child: const Text("Skip Debug (No Trials)"),
        ),
      );
    }

    final trial = _trials[_currentTrialIndex] as Map<String, dynamic>;
    final displayLetter = trial['display_letter'] as String? ?? '';
    final anchorWord = trial['anchor_word'] as String? ?? '';
    final anchorImage = trial['anchor_image_url'] as String?;
    final phonemeAudio = trial['phoneme_audio_url'] as String?;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Letter & Word Display
          Column(
            children: [
              Text(
                displayLetter,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: _isCorrect ? Colors.green : null,
                    ),
              ).animate(target: _isCorrect ? 1 : 0).scale(
                    duration: 300.ms,
                    curve: Curves.elasticOut,
                    end: const Offset(1.2, 1.2),
                  ),
              const SizedBox(height: 8),
              if (anchorWord.isNotEmpty)
                Text(
                  anchorWord.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.grey.shade700,
                        letterSpacing: 4.0,
                      ),
                ),
            ],
          ),

          // Core Visual Anchor
          if (anchorImage != null)
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              padding: const EdgeInsets.all(24),
              child: CachedNetworkImage(
                imageUrl: anchorImage,
                fit: BoxFit.contain,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, err) =>
                    const Icon(Icons.broken_image, size: 50, color: Colors.grey),
              ),
            ),

          // Interactivity Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Play Sound Button
              if (phonemeAudio != null)
                IconButton(
                  iconSize: 64,
                  onPressed: () {
                    ref.read(audioServiceProvider).playUrl(phonemeAudio);
                  },
                  icon: const Icon(Icons.volume_up_rounded, color: Colors.blueAccent),
                ),

              const SizedBox(width: 40),

              // Microphone Button
              GestureDetector(
                onTapDown: (_) => _startListening(trial),
                onTapUp: (_) => _stopListening(),
                onTapCancel: () => _stopListening(),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: _isCorrect
                        ? Colors.green
                        : (_isListening ? Colors.redAccent : Colors.orangeAccent),
                    shape: BoxShape.circle,
                    boxShadow: _isListening
                        ? [
                            BoxShadow(
                              color: Colors.redAccent.withOpacity(0.6),
                              blurRadius: 20,
                              spreadRadius: 10,
                            )
                          ]
                        : [],
                  ),
                  child: Icon(
                    _isCorrect ? Icons.check : Icons.mic,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          // Live debugging / feedback text
          if (_isListening || _lastWords.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                _isCorrect ? "Great job!" : "I heard: '$_lastWords'",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: _isCorrect ? Colors.green : Colors.grey.shade600,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            
          // Helper instructions
          Text(
            "Hold the microphone and say the sound!",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade500,
                ),
          ),
        ],
      ),
    );
  }
}
