import 'package:flutter/material.dart';
import '../../core/widgets/app_card.dart';
import 'skill_chart_data.dart';
import 'skill_accuracy_line_chart.dart';

class SkillChartCard extends StatelessWidget {
  final SkillChartData data;

  const SkillChartCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DomainChip(domain: data.domain),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  data.skillLabel,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              _StatusPill(status: data.status),
            ],
          ),
          Text(
            data.moduleId,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
                ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 180,
            child: SkillAccuracyLineChart(data: data),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _StatItem(
                label: 'Current',
                value: '${(data.currentAccuracy * 100).toInt()}%',
                icon: Icons.trending_up_rounded,
                color: Colors.blue,
              ),
              _StatItem(
                label: 'Average',
                value: '${(data.averageAccuracy * 100).toInt()}%',
                icon: Icons.functions_rounded,
                color: Colors.orange,
              ),
              _StatItem(
                label: 'Sessions',
                value: data.totalSessions.toString(),
                icon: Icons.history_rounded,
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusPill extends StatelessWidget {
  final String status;
  const _StatusPill({required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (status.toLowerCase()) {
      case 'mastered':
        color = Colors.green;
        break;
      case 'active':
        color = Colors.blue;
        break;
      case 'paused':
        color = Colors.orange;
        break;
      default:
        color = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          color: color,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _StatItem({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 10, color: Colors.grey),
        ),
      ],
    );
  }
}

class _DomainChip extends StatelessWidget {
  final String domain;
  const _DomainChip({required this.domain});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (domain.toLowerCase()) {
      case 'communication':
        color = Colors.blue;
        break;
      case 'social interaction':
        color = Colors.purple;
        break;
      case 'cognitive skills':
        color = Colors.orange;
        break;
      case 'emotional regulation':
        color = Colors.red;
        break;
      case 'daily living':
        color = Colors.green;
        break;
      default:
        color = Colors.blueGrey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        domain,
        style: TextStyle(
          color: color,
          fontSize: 10,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
