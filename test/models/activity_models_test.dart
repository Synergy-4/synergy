import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:synergy/models/activity_models.dart';

void main() {
  group('ActivityPayload Parsing', () {
    test('should parse rich SDUI JSON correctly', () {
      const jsonStr = r'''
{
  "version": "1.0.0",
  "theme": {
    "primary_color": "#8BC34A",
    "secondary_color": "#795548",
    "background_color": "#F1F8E9",
    "card_color": "#FFFFFF",
    "success_color": "#4CAF50",
    "error_color": "#F44336",
    "heading_font": {
      "family": "Comic Sans MS",
      "size": 24,
      "weight": "bold",
      "color": "#424242"
    },
    "body_font": {
      "family": "Arial",
      "size": 16,
      "weight": "normal",
      "color": "#424242"
    }
  },
  "steps": [
    {
      "id": "intro_1",
      "type": "instruction",
      "title": "Let's find some things, Kwaku! 🌟",
      "description": "You'll see a picture of an object. Listen carefully and tap the one Kwaku hears.",
      "voiceover_text": "Let's find some things, Kwaku! You'll see a picture of an object. Listen carefully and tap the one Kwaku hears.",
      "game_config": null,
      "lottie_url": null
    },
    {
      "id": "game_1",
      "type": "game",
      "title": "Tap the Object",
      "description": null,
      "voiceover_text": null,
      "game_config": {
        "game_type": "tap_to_select",
        "difficulty": "easy",
        "time_limit_seconds": 10,
        "data": {
          "instruction_text": "Find the ball",
          "target_item": {
            "id": "ball",
            "image_url": "http://localhost:8000/api/v1/assets/ball",
            "label": "ball"
          },
          "distractors": []
        },
        "on_success": {
          "type": "animation",
          "action": "confetti"
        }
      }
    }
  ]
}
''';

      final Map<String, dynamic> jsonData = jsonDecode(jsonStr);
      final payload = ActivityPayload.fromJson(jsonData);

      expect(payload.version, '1.0.0');
      expect(payload.theme.primaryColor, '#8BC34A');
      expect(payload.theme.headingFont.family, 'Comic Sans MS');
      expect(payload.steps.length, 2);
      expect(payload.steps[0].type, 'instruction');
      expect(payload.steps[1].type, 'game');
      expect(payload.steps[1].gameConfig?.gameType, 'tap_to_select');
      expect(payload.steps[1].gameConfig?.onSuccess?.action, 'confetti');
    });
  });
}
