import 'package:flutter/material.dart';
import '../../../models/activity_models.dart';

class SduiEventHandler {
  static void handleEvent(BuildContext context, GameEvent? event) {
    if (event == null) return;

    switch (event.type) {
      case 'animation':
        _handleAnimation(context, event);
        break;
      case 'sound':
        _handleSound(context, event);
        break;
      case 'navigation':
        _handleNavigation(context, event);
        break;
      default:
        debugPrint('Unknown event type: ${event.type}');
    }
  }

  static void _handleAnimation(BuildContext context, GameEvent event) {
    // In a real app, this might trigger a Lottie animation overlay or similar
    debugPrint('Playing animation: ${event.action}');
    if (event.action == 'confetti') {
        // Mock confetti trigger
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('🎉 SUCCESS! 🎉'), duration: Duration(seconds: 1)),
        );
    }
  }

  static void _handleSound(BuildContext context, GameEvent event) {
    debugPrint('Playing sound: ${event.action}');
  }

  static void _handleNavigation(BuildContext context, GameEvent event) {
    debugPrint('Navigating to: ${event.action}');
  }
}
