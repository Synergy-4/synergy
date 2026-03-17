import 'package:flutter/material.dart';
import '../../models/session_model.dart';
import 'package:intl/intl.dart';

import 'package:go_router/go_router.dart';

class RecentSessionsList extends StatelessWidget {
  final List<SessionResult> sessions;
  const RecentSessionsList({super.key, required this.sessions});

  @override
  Widget build(BuildContext context) {
    if (sessions.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Text('No sessions yet. Play to see progress!'),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Sessions',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ],
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: sessions.take(5).length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final session = sessions[index];
            return ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.history_rounded, color: Colors.grey),
              ),
              title: Text(
                _getActivityLabel(session.activityType),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(DateFormat('MMM d, h:mm a').format(session.playedAt)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${(session.accuracyScore * 100).toInt()}%',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  const Text('Accuracy', style: TextStyle(fontSize: 10, color: Colors.grey)),
                ],
              ),
              onTap: () => context.push('/sessions/${session.id}'),
            );
          },
        ),
      ],
    );
  }

  String _getActivityLabel(String type) {
    switch (type.toLowerCase()) {
      case 'matching':
        return 'Matching Mania';
      case 'tap_to_select':
        return 'Tap to Select';
      case 'phonics':
        return 'Phonics Fun';
      default:
        return 'Activity';
    }
  }
}
