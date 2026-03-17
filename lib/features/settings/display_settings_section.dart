import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/settings_provider.dart';

class DisplaySettingsSection extends ConsumerWidget {
  const DisplaySettingsSection({super.key});

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
            'DISPLAY',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        ListTile(
          title: const Text('Text Size'),
          subtitle: const Text('Small / Normal / Large'),
          trailing: SegmentedButton<double>(
            segments: const [
              ButtonSegment(value: 0.85, label: Text('S')),
              ButtonSegment(value: 1.0, label: Text('M')),
              ButtonSegment(value: 1.2, label: Text('L')),
            ],
            selected: {settings.textScale},
            onSelectionChanged: (value) => notifier.setTextScale(value.first),
          ),
        ),
        SwitchListTile(
          title: const Text('High Contrast Mode'),
          subtitle: const Text('Dark theme with enhanced visibility'),
          value: settings.highContrast,
          onChanged: notifier.setHighContrast,
        ),
      ],
    );
  }
}
