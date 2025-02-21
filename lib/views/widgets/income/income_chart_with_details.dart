import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartWithDetails extends StatefulWidget {
  const IncomeChartWithDetails({super.key});

  @override
  State<IncomeChartWithDetails> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChartWithDetails> {
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
            title: touchedIndex == 0 ? 'Design services' : '40%',
            titleStyle: AppStyles.medium16.copyWith(color: touchedIndex == 0 ? null : AppColors.white),
            titlePositionPercentageOffset: touchedIndex == 0 ? 1.35 : null,
            color: const Color(0xff208CC8),
            value: 40,
            radius: touchedIndex == 0 ? 60 : 50,
          ),
          PieChartSectionData(
            title: touchedIndex == 1 ? 'Design product' : '25%',
            titleStyle: AppStyles.medium16.copyWith(color:touchedIndex == 1 ? null : AppColors.white),
            titlePositionPercentageOffset: touchedIndex == 1 ? 2 : null,
            color: AppColors.blue,
            value: 25,
            radius: touchedIndex == 1 ? 60 : 50,
          ),
          PieChartSectionData(
            title: touchedIndex == 2 ? 'Product royalty' : '20%',
            titleStyle: AppStyles.medium16.copyWith(color: touchedIndex == 2 ? null : AppColors.white),
            titlePositionPercentageOffset: touchedIndex == 2 ? 1.35 : null,
            color: AppColors.primary,
            value: 20,
            radius: touchedIndex == 2 ? 60 : 50,
          ),
          PieChartSectionData(
            title: touchedIndex == 3 ? 'other' : '22%',
            titlePositionPercentageOffset: touchedIndex == 3 ? 1.4 : null,
            titleStyle: AppStyles.medium16.copyWith(color: touchedIndex == 3 ? null : AppColors.white),
            color: AppColors.grey,
            value: 22,
            radius: touchedIndex == 3 ? 60 : 50,
          ),
        ]);
  }
}
