import 'package:flutter/material.dart';
import '../../../models/activity_models.dart';
import '../../../core/widgets/app_button.dart';
import '../widgets/matching_game.dart';
/// A registry that maps SDUI components and game types to their respective widgets.
class ComponentRegistry {
  static Widget buildStep(StepConfig step, VoidCallback onComplete) {
    switch (step.type) {
      case 'instruction':
        return _InstructionStep(step: step, onComplete: onComplete);
      case 'game':
        return _GameStep(step: step, onComplete: onComplete);
      case 'reward':
        return _RewardStep(step: step, onComplete: onComplete);
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

    return Column(
      children: [
        // Progress Indicator
        LinearProgressIndicator(
          value: (_currentStepIndex + 1) / widget.payload.steps.length,
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(
            HexColor.fromHex(widget.payload.theme.primaryColor),
          ),
        ),

        Expanded(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: ComponentRegistry.buildStep(step, _nextStep),
          ),
        ),
      ],
    );
  }
}

class _InstructionStep extends StatelessWidget {
  final StepConfig step;
  final VoidCallback onComplete;

  const _InstructionStep({required this.step, required this.onComplete});

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
          AppButton(text: 'I\'m Ready!', onPressed: onComplete),
        ],
      ),
    );
  }
}

class _GameStep extends StatelessWidget {
  final StepConfig step;
  final VoidCallback onComplete;

  const _GameStep({required this.step, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    if (step.gameConfig?.gameType == 'matching') {
      return MatchingGame(config: step.gameConfig!, onComplete: onComplete);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Game: ${step.gameConfig?.gameType ?? "Unknown"}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        AppButton(text: 'Complete Game', onPressed: onComplete),
      ],
    );
  }
}

class _RewardStep extends StatelessWidget {
  final StepConfig step;
  final VoidCallback onComplete;

  const _RewardStep({required this.step, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(step.title, style: Theme.of(context).textTheme.displaySmall),
          const Icon(Icons.star, size: 100, color: Colors.amber),
          AppButton(text: 'Done', onPressed: onComplete),
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
