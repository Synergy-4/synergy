import 'package:flutter/material.dart';

class AvatarPicker extends StatelessWidget {
  final String selectedEmoji;
  final ValueChanged<String> onSelected;

  const AvatarPicker({
    super.key,
    required this.selectedEmoji,
    required this.onSelected,
  });

  static const List<String> avatars = [
    '👶', '👧', '👦', '🧒', '🦁', '🐻', '🐰', '🐼', '🦊', '🦉',
    '🎨', '🚀', '⚽', '🎸', '🍦', '🌈', '⭐', '🦖', '🦄', '🐬'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Choose an Avatar', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: avatars.map((emoji) {
            final isSelected = emoji == selectedEmoji;
            return GestureDetector(
              onTap: () => onSelected(emoji),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue.withOpacity(0.1) : Colors.grey[100],
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Colors.blue : Colors.transparent,
                    width: 2,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(emoji, style: const TextStyle(fontSize: 24)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
