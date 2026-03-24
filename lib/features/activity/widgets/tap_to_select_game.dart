import 'package:flutter/material.dart';
import '../../../models/activity_models.dart';
import '../../../core/api_constants.dart';
import '../../../core/widgets/app_card.dart';

class TapToSelectGame extends StatefulWidget {
  final GameConfig config;
  final VoidCallback onComplete;

  const TapToSelectGame({
    super.key,
    required this.config,
    required this.onComplete,
  });

  @override
  State<TapToSelectGame> createState() => _TapToSelectGameState();
}

class _TapToSelectGameState extends State<TapToSelectGame> {
  late Map<String, dynamic> _targetItem;
  late List<dynamic> _distractors;
  late List<Map<String, dynamic>> _allItems;
  bool _isSolved = false;

  @override
  void initState() {
    super.initState();
    final data = widget.config.data;
    _targetItem = data['target_item'] as Map<String, dynamic>;
    _distractors = data['distractors'] as List<dynamic>? ?? [];

    _allItems = [_targetItem, ..._distractors.cast<Map<String, dynamic>>()];
    debugPrint("Game ==> ${_allItems.toString()}");
    _allItems.shuffle();
  }

  void _onItemTapped(String id) {
    if (_isSolved) return;

    if (id == _targetItem['id']) {
      setState(() {
        _isSolved = true;
      });
      // Trigger success event logic here if needed, or just complete
      Future.delayed(const Duration(milliseconds: 500), widget.onComplete);
    } else {
      // Handle failure (e.g., shake animation, feedback)
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Try again!')));
    }
  }

  String _formatImageUrl(String? url) {
    if (url == null) return '';
    // Fix localhost issue for Android emulators if baseUrl is set to 10.0.2.2
    if (url.contains('localhost') && ApiConstants.baseUrl.contains('10.0.2.2')) {
      return url.replaceAll('localhost', '10.0.2.2');
    }
    return url;
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.config.data;
    final instructionText = data['instruction_text'] ?? 'Find the object';
    final gridColumns = data['grid_columns'] ?? 2;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            instructionText,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(24),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridColumns,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: _allItems.length,
            itemBuilder: (context, index) {
              final item = _allItems[index];
              final imageUrl = _formatImageUrl(item['image_url']);
              
              return GestureDetector(
                onTap: () => _onItemTapped(item['id']),
                child: AppCard(
                  padding: const EdgeInsets.all(8),
                  color: Colors.white,
                  borderRadius: 16,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (imageUrl.isNotEmpty)
                        Expanded(
                          child: Image.network(
                            imageUrl,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.image_not_supported),
                          ),
                        ),
                      const SizedBox(height: 8),
                      Text(
                        item['label'] ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
