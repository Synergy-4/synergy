import 'package:flutter/material.dart';
import '../../../models/activity_models.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_card.dart';

class MatchingGame extends StatefulWidget {
  final GameConfig config;
  final VoidCallback onComplete;

  const MatchingGame({
    super.key,
    required this.config,
    required this.onComplete,
  });

  @override
  State<MatchingGame> createState() => _MatchingGameState();
}

class _MatchingGameState extends State<MatchingGame> {
  final Map<String, bool> _matchedItems = {};
  late List<Map<String, dynamic>> _items;
  late List<Map<String, dynamic>> _targets;

  @override
  void initState() {
    super.initState();
    final data = widget.config.data;
    final List<dynamic> pairs = data['pairs'] ?? [];

    _items = pairs.map((p) => {
      'id': (p['item'] ?? '').toString(),
      'label': (p['item'] ?? '').toString()
    }).toList();
    _targets = pairs
        .map((p) => {
          'id': (p['item'] ?? '').toString(),
          'label': (p['match'] ?? '').toString()
        })
        .toList();

    _items.shuffle();
    _targets.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          'Drag the items to their matches!',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 40),
        Expanded(
          child: Row(
            children: [
              // Items to drag
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _items.map((item) {
                    final id = item['id']?.toString() ?? '';
                    if (_matchedItems[id] == true) {
                      return const SizedBox(height: 80, width: 80);
                    }
                    return Draggable<String>(
                      data: id,
                      feedback: _ItemWidget(
                        label: item['label']?.toString() ?? '',
                        isFeedback: true,
                      ),
                      childWhenDragging: Opacity(
                        opacity: 0.3,
                        child: _ItemWidget(label: item['label']?.toString() ?? ''),
                      ),
                      child: _ItemWidget(label: item['label']?.toString() ?? ''),
                    );
                  }).toList(),
                ),
              ),
              // Targets to drop onto
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _targets.map((target) {
                    final id = target['id']?.toString() ?? '';
                    return DragTarget<String>(
                      onWillAcceptWithDetails: (data) => data == id,
                      onAcceptWithDetails: (data) {
                        setState(() {
                          _matchedItems[id] = true;
                        });
                        if (_matchedItems.length == _items.length) {
                          Future.delayed(
                            const Duration(milliseconds: 500),
                            widget.onComplete,
                          );
                        }
                      },
                      builder: (context, candidateData, rejectedData) {
                        final isMatched = _matchedItems[id] == true;
                        return _TargetWidget(
                          label: target['label']?.toString() ?? '',
                          isMatched: isMatched,
                          isCandidate: candidateData.isNotEmpty,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final String label;
  final bool isFeedback;

  const _ItemWidget({required this.label, this.isFeedback = false});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(16),
      color: isFeedback
          ? AppColors.softBlue.withOpacity(0.8)
          : AppColors.softBlue,
      borderRadius: 16,
      child: Center(
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class _TargetWidget extends StatelessWidget {
  final String label;
  final bool isMatched;
  final bool isCandidate;

  const _TargetWidget({
    required this.label,
    required this.isMatched,
    required this.isCandidate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 80,
      decoration: BoxDecoration(
        color: isMatched
            ? AppColors.grassGreen
            : (isCandidate ? AppColors.brightYellow : Colors.white),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isMatched ? AppColors.primaryGreen : AppColors.textLight,
          width: 2,
        ),
      ),
      child: Center(
        child: isMatched
            ? const Icon(
                Icons.check_circle,
                color: AppColors.primaryGreen,
                size: 40,
              )
            : Text(
                label,
                style: TextStyle(
                  color: isCandidate
                      ? AppColors.textPrimary
                      : AppColors.textSecondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
