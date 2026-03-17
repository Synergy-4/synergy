import 'package:flutter/material.dart';

class AddGoalBottomSheet extends StatefulWidget {
  final Function(String title, String domain) onAdd;

  const AddGoalBottomSheet({super.key, required this.onAdd});

  @override
  State<AddGoalBottomSheet> createState() => _AddGoalBottomSheetState();
}

class _AddGoalBottomSheetState extends State<AddGoalBottomSheet> {
  final _titleController = TextEditingController();
  String _selectedDomain = 'Communication';

  final List<String> _domains = [
    'Communication',
    'Social Interaction',
    'Cognitive Skills',
    'Emotional Regulation',
    'Daily Living',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 24,
        right: 24,
        top: 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Learning Goal',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: 'Goal Title',
              hintText: 'e.g., Identify animals',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
            autofocus: true,
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: _selectedDomain,
            decoration: InputDecoration(
              labelText: 'Domain',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
            items: _domains.map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
            onChanged: (val) => setState(() => _selectedDomain = val!),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              if (_titleController.text.isNotEmpty) {
                widget.onAdd(_titleController.text, _selectedDomain);
                Navigator.pop(context);
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text('Add Goal'),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
