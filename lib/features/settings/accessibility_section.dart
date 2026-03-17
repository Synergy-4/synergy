import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/settings_provider.dart';

class AccessibilitySection extends ConsumerWidget {
  const AccessibilitySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final notifier = ref.read(settingsProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'ACCESSIBILITY',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text('Voiceover Speed'),
        ),
        Slider(
          value: settings.ttsRate,
          min: 0.5,
          max: 1.5,
          divisions: 10,
          label: '${settings.ttsRate}x',
          onChanged: notifier.setTtsRate,
        ),
        SwitchListTile(
          title: const Text('Reduce Animations'),
          subtitle: const Text('Disables movement and transitions'),
          value: settings.reduceAnimations,
          onChanged: notifier.setReduceAnimations,
        ),
      ],
    );
  }
}
