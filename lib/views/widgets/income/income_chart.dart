import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (touchEvent, pieTouchResponse) {
            touchedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xff208CC8),
            value: 40,
            radius: touchedIndex == 0 ? 26 : 21,
          ),
          PieChartSectionData(
            showTitle: false,
            color: AppColors.blue,
            value: 25,
            radius: touchedIndex == 1 ? 26 : 21,
          ),
          PieChartSectionData(
            showTitle: false,
            color: AppColors.primary,
            value: 20,
            radius: touchedIndex == 2 ? 26 : 21,
          ),
          PieChartSectionData(
            showTitle: false,
            color: AppColors.grey,
            value: 22,
            radius: touchedIndex == 3 ? 26 : 21,
          ),
        ]);
  }
}
