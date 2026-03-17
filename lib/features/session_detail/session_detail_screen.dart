import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/session_model.dart';
import '../../core/utility.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/app_card.dart';
import 'package:intl/intl.dart';

class SessionDetailScreen extends ConsumerStatefulWidget {
  final int sessionId;
  const SessionDetailScreen({super.key, required this.sessionId});

  @override
  ConsumerState<SessionDetailScreen> createState() =>
      _SessionDetailScreenState();
}

class _SessionDetailScreenState extends ConsumerState<SessionDetailScreen> {
  final _notesController = TextEditingController();
  bool _isSaving = false;
  SessionResult? _session;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchSession();
  }

  Future<void> _fetchSession() async {
    final result = await ApiClient.instance.get(
      '/sessions/${widget.sessionId}',
    );
    if (result is ApiSuccess) {
      if (mounted) {
        setState(() {
          _session = SessionResult.fromJson(result as Map<String, dynamic>);
          _notesController.text = _session?.notes ?? '';
          _isLoading = false;
        });
      }
    } else {
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to load session details')),
        );
      }
    }
  }

  Future<void> _saveNotes() async {
    setState(() => _isSaving = true);
    final result = await ApiClient.instance.patch(
      '/sessions/${widget.sessionId}',
      body: {'notes': _notesController.text},
    );
    setState(() => _isSaving = false);

    if (result is ApiSuccess) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Notes saved successfully')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Failed to save notes')));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (_session == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Session Details')),
        body: const Center(child: Text('Session not found')),
      );
    }

    final session = _session!;
    final dateFormat = DateFormat('MMMM d, yyyy · h:mm a');

    return Scaffold(
      appBar: AppBar(title: const Text('Session Details')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            session.activityType,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryBlue,
            ),
          ),
          Text(
            dateFormat.format(session.playedAt),
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 24),
          _buildScoreBreakdown(session),
          const SizedBox(height: 24),
          _buildDetailRow(
            'Status',
            session.status.toUpperCase(),
            color: session.status == 'completed' ? Colors.green : Colors.orange,
          ),
          _buildDetailRow(
            'Duration',
            '${(session.durationSeconds ?? 0) ~/ 60}m ${(session.durationSeconds ?? 0) % 60}s',
          ),
          _buildDetailRow(
            'Overall Accuracy',
            '${(session.accuracyScore * 100).toInt()}%',
          ),
          const SizedBox(height: 32),
          Text(
            'SESSION NOTES',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _notesController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Add notes about this session...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              filled: true,
              fillColor: Colors.grey[50],
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _isSaving ? null : _saveNotes,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryBlue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: _isSaving
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : const Text('Save Notes'),
          ),
        ],
      ),
    );
  }

  Widget _buildScoreBreakdown(SessionResult session) {
    return AppCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(
                'Correct',
                session.correctCount ?? 0,
                Colors.green,
              ),
              _buildStatItem(
                'Prompted',
                session.promptedCount ?? 0,
                Colors.blue,
              ),
              _buildStatItem(
                'Incorrect',
                session.incorrectCount ?? 0,
                Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: session.accuracyScore,
              minHeight: 12,
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation<Color>(
                AppColors.primaryBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, int value, Color color) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value, {Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
