import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'audio_settings_section.dart';
import 'display_settings_section.dart';
import 'accessibility_section.dart';
import 'personal_info_section.dart';
import 'account_actions_section.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          PersonalInfoSection(),
          Divider(),
          AudioSettingsSection(),
          Divider(),
          DisplaySettingsSection(),
          Divider(),
          AccessibilitySection(),
          Divider(),
          AccountActionsSection(),
          SizedBox(height: 40),
          Center(
            child: Text(
              'Synergy v0.1.0',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
