import 'package:flutter/material.dart';

class InterestsChipInput extends StatefulWidget {
  final List<String> initialInterests;
  final ValueChanged<List<String>> onChanged;

  const InterestsChipInput({
    super.key,
    required this.initialInterests,
    required this.onChanged,
  });

  @override
  State<InterestsChipInput> createState() => _InterestsChipInputState();
}

class _InterestsChipInputState extends State<InterestsChipInput> {
  late List<String> _interests;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _interests = List.from(widget.initialInterests);
  }

  void _addInterest(String value) {
    final trimmed = value.trim();
    if (trimmed.isNotEmpty && !_interests.contains(trimmed)) {
      setState(() {
        _interests.add(trimmed);
        widget.onChanged(_interests);
      });
      _controller.clear();
    }
  }

  void _removeInterest(String value) {
    setState(() {
      _interests.remove(value);
      widget.onChanged(_interests);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Interests', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Add an interest (e.g., Animals, Space)',
            suffixIcon: IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () => _addInterest(_controller.text),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onSubmitted: _addInterest,
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: _interests.map((interest) {
            return Chip(
              label: Text(interest),
              onDeleted: () => _removeInterest(interest),
              deleteIconColor: Colors.red[300],
            );
          }).toList(),
        ),
      ],
    );
  }
}
