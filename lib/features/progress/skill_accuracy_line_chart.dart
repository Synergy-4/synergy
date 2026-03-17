import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../progress/skill_chart_data.dart';
import '../../core/theme/app_colors.dart';

class SkillAccuracyLineChart extends StatelessWidget {
  final SkillChartData data;

  const SkillAccuracyLineChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.points.isEmpty) {
      return const SizedBox(
        height: 150,
        child: Center(child: Text('No session data yet')),
      );
    }

    final domainColor = _getDomainColor(data.domain);

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: false,
          horizontalInterval: 0.25,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Colors.grey.withOpacity(0.2),
            strokeWidth: 1,
          ),
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 36,
              getTitlesWidget: (value, meta) => Text(
                '${(value * 100).toInt()}%',
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              getTitlesWidget: (value, meta) => Text(
                'S${value.toInt() + 1}',
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: (data.points.length - 1).toDouble(),
        minY: 0,
        maxY: 1.0,
        lineBarsData: [
          // Main accuracy line
          LineChartBarData(
            spots: data.points
                .map((p) => FlSpot(p.sessionIndex.toDouble(), p.accuracy))
                .toList(),
            isCurved: true,
            color: domainColor,
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              color: domainColor.withOpacity(0.1),
            ),
          ),
          // Average line
          LineChartBarData(
            spots: [
              FlSpot(0, data.averageAccuracy),
              FlSpot((data.points.length - 1).toDouble(), data.averageAccuracy),
            ],
            color: Colors.grey.withOpacity(0.5),
            barWidth: 1,
            dashArray: [5, 5],
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }

  Color _getDomainColor(String domain) {
    switch (domain.toLowerCase()) {
      case 'communication':
        return const Color(0xFF58A6FF);
      case 'social interaction':
        return const Color(0xFFBC8CFF);
      case 'cognitive skills':
        return const Color(0xFF3FB950);
      case 'emotional regulation':
        return const Color(0xFFE3B341);
      case 'daily living':
        return const Color(0xFFFFA657);
      case 'executive function':
        return const Color(0xFFF85149);
      default:
        return AppColors.primaryBlue;
    }
  }
}
