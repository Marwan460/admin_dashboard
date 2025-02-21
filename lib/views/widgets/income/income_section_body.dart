import 'package:admin_dashboard/core/utils/size_config.dart';
import 'package:admin_dashboard/views/widgets/income/income_chart_with_details.dart';
import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1688
        ? const Expanded(child: Padding(
          padding: EdgeInsets.all(8),
          child: SizedBox(child: IncomeChartWithDetails()),
        ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(height: 150, child: IncomeChart()),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              )
            ],
          );
  }
}
