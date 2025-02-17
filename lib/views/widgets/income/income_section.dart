import 'package:admin_dashboard/views/widgets/custom_background_widget.dart';
import 'package:admin_dashboard/views/widgets/income/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          IncomeHeader()
        ],
      ),
    );
  }
}
