import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../../providers/children_list_provider.dart';
import '../../models/child_model.dart';
import 'widgets/avatar_picker.dart';
import 'widgets/interests_chip_input.dart';
import 'widgets/add_goal_bottom_sheet.dart';

class ChildFormScreen extends ConsumerStatefulWidget {
  final ChildModel? child;
  const ChildFormScreen({super.key, this.child});

  @override
  ConsumerState<ChildFormScreen> createState() => _ChildFormScreenState();
}

class _ChildFormScreenState extends ConsumerState<ChildFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _diagnosisController;
  DateTime? _selectedDate;
  late List<String> _interests;
  late List<Map<String, String>> _goals;
  late String _selectedAvatar;
  bool _isSaving = false;

  bool get _isEditing => widget.child != null;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.child?.name ?? '');
    _diagnosisController = TextEditingController(
      text: widget.child?.diagnosisNotes ?? '',
    );
    _selectedDate = widget.child != null
        ? DateTime.parse(widget.child!.dateOfBirth)
        : null;
    _interests = List.from(widget.child?.interests ?? []);
    _goals = List.from(
      (widget.child?.goals ?? []).map(
        (g) => Map<String, String>.from(g as Map),
      ),
    );
    // Ideally avatar is stored in model, but for now we might derive or use a default
    _selectedAvatar = '👶';
  }

  @override
  void dispose() {
    _nameController.dispose();
    _diagnosisController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          _selectedDate ??
          DateTime.now().subtract(const Duration(days: 365 * 4)),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryBlue,
              onPrimary: Colors.white,
              onSurface: AppColors.textPrimary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate() || _selectedDate == null) {
      if (_selectedDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a date of birth')),
        );
      }
      return;
    }

    setState(() => _isSaving = true);

    try {
      if (widget.child != null) {
        await ref
            .read(childrenListProvider.notifier)
            .updateChild(
              id: widget.child!.id,
              name: _nameController.text.trim(),
              dateOfBirth: DateFormat('yyyy-MM-dd').format(_selectedDate!),
              interests: _interests,
              goals: _goals,
              diagnosisNotes: _diagnosisController.text.trim().isEmpty
                  ? null
                  : _diagnosisController.text.trim(),
            );
      } else {
        await ref
            .read(childrenListProvider.notifier)
            .addChild(
              name: _nameController.text.trim(),
              dateOfBirth: DateFormat('yyyy-MM-dd').format(_selectedDate!),
              interests: _interests,
              goals: _goals,
              diagnosisNotes: _diagnosisController.text.trim().isEmpty
                  ? null
                  : _diagnosisController.text.trim(),
            );
      }
      if (mounted) {
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? 'Edit Profile' : 'Add Child'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppCard(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    AvatarPicker(
                      selectedEmoji: _selectedAvatar,
                      onSelected: (emoji) =>
                          setState(() => _selectedAvatar = emoji),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'First Name / Nickname',
                        prefixIcon: Icon(Icons.person_rounded),
                      ),
                      validator: (value) =>
                          value == null || value.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => _selectDate(context),
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          labelText: 'Date of Birth',
                          prefixIcon: Icon(Icons.calendar_today_rounded),
                        ),
                        child: Text(
                          _selectedDate == null
                              ? 'Select Date'
                              : DateFormat(
                                  'MMMM d, yyyy',
                                ).format(_selectedDate!),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              AppCard(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InterestsChipInput(
                      initialInterests: _interests,
                      onChanged: (val) => setState(() => _interests = val),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _diagnosisController,
                      decoration: const InputDecoration(
                        labelText: 'Diagnosis Notes (Private)',
                        prefixIcon: Icon(Icons.description_rounded),
                        hintText: 'e.g., Sensory preferences, non-verbal...',
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 24),
                    const Divider(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Learning Goals',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextButton.icon(
                          onPressed: () => _showAddGoal(context),
                          icon: const Icon(Icons.add_circle_outline, size: 20),
                          label: const Text('Add Goal'),
                        ),
                      ],
                    ),
                    if (_goals.isEmpty)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'No goals added yet',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                    ..._goals.map(
                      (goal) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(goal['title'] ?? ''),
                        subtitle: Text(goal['domain'] ?? ''),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            size: 20,
                            color: Colors.red,
                          ),
                          onPressed: () => setState(() => _goals.remove(goal)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              AppButton(
                text: _isEditing ? 'Save Changes' : 'Create Profile',
                onPressed: _isSaving ? null : _save,
                isLoading: _isSaving,
                width: double.infinity,
              ),
              if (_isEditing) ...[
                const SizedBox(height: 16),
                TextButton(
                  onPressed: _handleDelete,
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: const Text('Delete Profile'),
                ),
              ],
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _handleDelete() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Child Profile'),
        content: Text(
          'Are you sure you want to delete ${_nameController.text}\'s profile? This cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      setState(() => _isSaving = true);
      try {
        await ref
            .read(childrenListProvider.notifier)
            .deleteChild(widget.child!.id);
        if (mounted) context.pop();
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Error: $e')));
        }
      } finally {
        if (mounted) setState(() => _isSaving = false);
      }
    }
  }

  void _showAddGoal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => AddGoalBottomSheet(
        onAdd: (title, domain) {
          setState(() {
            _goals.add({'title': title, 'domain': domain});
          });
        },
      ),
    );
  }
}
