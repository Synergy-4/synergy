import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/settings_provider.dart';

class AudioSettingsSection extends ConsumerWidget {
  const AudioSettingsSection({super.key});

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
            'AUDIO',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        SwitchListTile(
          title: const Text('Background Music'),
          value: settings.musicEnabled,
          onChanged: notifier.setMusicEnabled,
        ),
        SwitchListTile(
          title: const Text('Sound Effects'),
          value: settings.sfxEnabled,
          onChanged: notifier.setSfxEnabled,
        ),
        if (settings.musicEnabled || settings.sfxEnabled) ...[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text('Master Volume'),
          ),
          Slider(
            value: settings.volume,
            onChanged: notifier.setVolume,
          ),
        ],
      ],
    );
  }
}
