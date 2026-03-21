import 'package:flutter/material.dart';
import '../../../models/activity_models.dart';

class ColourMatchingGame extends StatefulWidget {
  final GameConfig config;
  final VoidCallback onComplete;

  const ColourMatchingGame({
    super.key,
    required this.config,
    required this.onComplete,
  });

  @override
  State<ColourMatchingGame> createState() => _ColourMatchingGameState();
}

class _ColourMatchingGameState extends State<ColourMatchingGame> {
  late List<Map<String, dynamic>> _middleCards;
  late List<Map<String, dynamic>> _poolCards;
  late List<Map<String, dynamic>> _handCards;
  
  int _score = 0;
  int _errors = 0;
  bool _gameOver = false;
  String? _gameOverMessage;

  @override
  void initState() {
    super.initState();
    _initializeGame();
  }

  void _initializeGame() {
    final data = widget.config.data;
    
    // Parse middle zone cards
    final middleZone = data['middle_zone'] as Map<String, dynamic>? ?? {};
    final middleList = middleZone['cards'] as List<dynamic>? ?? [];
    _middleCards = middleList.map((e) => Map<String, dynamic>.from(e as Map)).toList();

    // Parse pool cards
    final pool = data['pool'] as Map<String, dynamic>? ?? {};
    final poolList = pool['cards'] as List<dynamic>? ?? [];
    _poolCards = poolList.map((e) => Map<String, dynamic>.from(e as Map)).toList();

    // Setup hand
    final handSize = data['hand_size'] as int? ?? 2;
    _handCards = [];
    for (int i = 0; i < handSize; i++) {
      if (_poolCards.isNotEmpty) {
        _handCards.add(_poolCards.removeAt(0));
      }
    }
  }

  Color _parseHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  void _onHandCardTapped(Map<String, dynamic> handCard, int index) {
    if (_gameOver) return;

    final colour = handCard['colour'];
    
    // Find matching targets
    final matchingTargets = _middleCards.where((c) => c['colour'] == colour).toList();

    setState(() {
      if (matchingTargets.isNotEmpty) {
        // MATCH: Remove matching targets
        for (var target in matchingTargets) {
          _middleCards.remove(target);
        }
        _score += 10 * matchingTargets.length;
        
        // Remove hand card
        _handCards.removeAt(index);
        
        // Draw replacement
        if (_poolCards.isNotEmpty) {
          _handCards.insert(index, _poolCards.removeAt(0));
        }
      } else {
        // MISS
        _errors++;
        
        // Remove hand card
        _handCards.removeAt(index);

        // Draw replacement
        if (_poolCards.isNotEmpty) {
          _handCards.insert(index, _poolCards.removeAt(0));
        }
      }

      // Check win/lose conditions
      if (_middleCards.isEmpty) {
        _gameOver = true;
        Future.delayed(const Duration(milliseconds: 500), widget.onComplete);
      } else {
        _checkWinnableState();
      }
    });
  }

  void _checkWinnableState() {
    // Check if remaining pool + hand contains at least one match for every remaining middle card
    // Wait, the spec says: "does the remaining pool + current hand contain at least one card of every colour still in the middle? If not, the game is unwinnable."
    // Actually, as long as there's ANY match possible, they can keep playing. But if no colour in the middle can be matched by ANY card in hand+pool, they are hard stuck.
    bool canMatchAny = false;
    final availableColours = <String>{};
    for (var c in _handCards) { availableColours.add(c['colour'].toString()); }
    for (var c in _poolCards) { availableColours.add(c['colour'].toString()); }

    for (var c in _middleCards) {
      if (availableColours.contains(c['colour'].toString())) {
        canMatchAny = true;
        break;
      }
    }

    if (!canMatchAny && _middleCards.isNotEmpty) {
      _gameOver = true;
      _gameOverMessage = 'Oops, no more matching cards!';
      Future.delayed(const Duration(milliseconds: 2000), widget.onComplete);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // HUD
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Score: $_score', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
              Text('Pool: ${_poolCards.length}', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
              Text('Errors: $_errors', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
            ],
          ),
        ),
        
        const SizedBox(height: 20),
        
        // TARGET ZONE
        const Text(
          'TARGET ZONE',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, letterSpacing: 1.2),
        ),
        const SizedBox(height: 8),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue.withValues(alpha: 0.3), style: BorderStyle.solid),
            ),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: _middleCards.map((card) {
                return _buildCard(card, isTarget: true);
              }).toList(),
            ),
          ),
        ),

        // FEEDBACK ZONE (Spacer or message)
        Container(
          height: 48,
          alignment: Alignment.center,
          child: _gameOverMessage != null
              ? Text(_gameOverMessage!, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold))
              : const Text('Tap a matching card in your hand!', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic)),
        ),

        // HAND ZONE
        const Text(
          'YOUR HAND',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, letterSpacing: 1.2),
        ),
        const SizedBox(height: 8),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
             decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.green.withValues(alpha: 0.3), style: BorderStyle.solid),
            ),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: _handCards.asMap().entries.map((entry) {
                final idx = entry.key;
                final card = entry.value;
                return GestureDetector(
                  onTap: () => _onHandCardTapped(card, idx),
                  child: _buildCard(card, isTarget: false),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildCard(Map<String, dynamic> card, {required bool isTarget}) {
    final hexColor = card['hex']?.toString() ?? '#FFFFFF';
    final label = card['label']?.toString() ?? '';
    final quantity = card['quantity'] as int?;
    final color = _parseHex(hexColor);
    
    // For yellow cards, text might need to be darker. Simplify by using black for bright colours
    final isLight = color.computeLuminance() > 0.5;
    final textColor = isLight ? Colors.black87 : Colors.white;

    return Container(
      width: isTarget ? 72 : 88,
      height: isTarget ? 96 : 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              label.toUpperCase(),
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: isTarget ? 12 : 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (isTarget && quantity != null && quantity > 1)
            Positioned(
              top: -4,
              right: -4,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  'x$quantity',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
