import 'package:flutter/material.dart';
import '../../../models/activity_models.dart';
import '../../../core/widgets/app_button.dart';
import '../widgets/matching_game.dart';
import '../widgets/colour_matching_game.dart';
import '../widgets/tap_to_select_game.dart';
import 'event_handler.dart';

/// A registry that maps SDUI components and game types to their respective widgets.
class ComponentRegistry {
  static Widget buildStep(
    StepConfig step,
    VoidCallback onComplete,
    ThemeConfigData theme,
  ) {
    switch (step.type) {
      case 'instruction':
        return _InstructionStep(
          step: step,
          onComplete: onComplete,
          theme: theme,
        );
      case 'game':
        return _GameStep(step: step, onComplete: onComplete, theme: theme);
      case 'reward':
        return _RewardStep(step: step, onComplete: onComplete, theme: theme);
      default:
        return Center(child: Text('Unknown step type: ${step.type}'));
    }
  }
}

class SduiRenderer extends StatefulWidget {
  final ActivityPayload payload;
  final VoidCallback onActivityComplete;

  const SduiRenderer({
    super.key,
    required this.payload,
    required this.onActivityComplete,
  });

  @override
  State<SduiRenderer> createState() => _SduiRendererState();
}

class _SduiRendererState extends State<SduiRenderer> {
  int _currentStepIndex = 0;

  void _nextStep() {
    if (_currentStepIndex < widget.payload.steps.length - 1) {
      setState(() {
        _currentStepIndex++;
      });
    } else {
      widget.onActivityComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    final step = widget.payload.steps[_currentStepIndex];
    final theme = widget.payload.theme;

    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: HexColor.fromHex(theme.backgroundColor),
        textTheme: Theme.of(context).textTheme.copyWith(
          displaySmall: TextStyle(
            fontFamily: theme.headingFont.family,
            fontSize: theme.headingFont.size,
            fontWeight: _parseFontWeight(theme.headingFont.weight),
            color: HexColor.fromHex(theme.headingFont.color),
          ),
          bodyLarge: TextStyle(
            fontFamily: theme.bodyFont.family,
            fontSize: theme.bodyFont.size,
            fontWeight: _parseFontWeight(theme.bodyFont.weight),
            color: HexColor.fromHex(theme.bodyFont.color),
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: HexColor.fromHex(theme.backgroundColor),
        body: Column(
          children: [
            // Progress Indicator
            LinearProgressIndicator(
              value: (_currentStepIndex + 1) / widget.payload.steps.length,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                HexColor.fromHex(theme.primaryColor),
              ),
            ),

            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: ComponentRegistry.buildStep(step, _nextStep, theme),
              ),
            ),
          ],
        ),
      ),
    );
  }

  FontWeight _parseFontWeight(String weight) {
    switch (weight.toLowerCase()) {
      case 'bold':
        return FontWeight.bold;
      case 'normal':
      default:
        return FontWeight.normal;
    }
  }
}

class _InstructionStep extends StatelessWidget {
  final StepConfig step;
  final VoidCallback onComplete;
  final ThemeConfigData theme;

  const _InstructionStep({
    required this.step,
    required this.onComplete,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            step.title,
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          if (step.description != null)
            Text(
              step.description!,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          const Spacer(),
          AppButton(
            text: 'I\'m Ready!',
            onPressed: () {
              // Potential voiceover trigger could go here
              onComplete();
            },
            backgroundColor: HexColor.fromHex(theme.primaryColor),
          ),
        ],
      ),
    );
  }
}

class _GameStep extends StatelessWidget {
  final StepConfig step;
  final VoidCallback onComplete;
  final ThemeConfigData theme;

  const _GameStep({
    required this.step,
    required this.onComplete,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final gameType = step.gameConfig?.gameType;

    if (gameType == 'matching') {
      return MatchingGame(config: step.gameConfig!, onComplete: onComplete);
    } else if (gameType == 'colour_matching') {
      return ColourMatchingGame(
        config: step.gameConfig!,
        onComplete: () {
          SduiEventHandler.handleEvent(context, step.gameConfig?.onSuccess);
          onComplete();
        },
      );
    } else if (gameType == 'tap_to_select') {
      return TapToSelectGame(
        config: step.gameConfig!,
        onComplete: () {
          SduiEventHandler.handleEvent(context, step.gameConfig?.onSuccess);
          onComplete();
        },
      );
    } else if (gameType == 'phonics') {
      // Phonics game logic - for now using a placeholder with a completion button
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.record_voice_over, size: 80, color: Colors.blue),
          const SizedBox(height: 16),
          Text(
            'Phonics Session',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 24),
          AppButton(
            text: 'I\'m Done!',
            onPressed: () {
              SduiEventHandler.handleEvent(context, step.gameConfig?.onSuccess);
              onComplete();
            },
            backgroundColor: HexColor.fromHex(theme.primaryColor),
          ),
        ],
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Game: ${gameType ?? "Unknown"}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        AppButton(
          text: 'Complete Game',
          onPressed: onComplete,
          backgroundColor: HexColor.fromHex(theme.primaryColor),
        ),
      ],
    );
  }
}

class _RewardStep extends StatelessWidget {
  final StepConfig step;
  final VoidCallback onComplete;
  final ThemeConfigData theme;

  const _RewardStep({
    required this.step,
    required this.onComplete,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(step.title, style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: 24),
          if (step.lottieUrl != null)
            const Icon(
              Icons.celebration,
              size: 120,
              color: Colors.orange,
            ) // Mock Lottie
          else
            const Icon(Icons.star, size: 100, color: Colors.amber),
          const SizedBox(height: 24),
          if (step.description != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                step.description!,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: AppButton(
              text: 'Done',
              onPressed: onComplete,
              backgroundColor: HexColor.fromHex(theme.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}

extension HexColor on Color {
  static Color fromHex(String? hexString) {
    if (hexString == null || hexString.isEmpty) return Colors.transparent;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    try {
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (_) {
      return Colors.transparent;
    }
  }
}
