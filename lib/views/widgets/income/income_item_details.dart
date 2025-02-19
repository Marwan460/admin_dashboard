import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:admin_dashboard/models/income_item_details_model.dart';
import 'package:flutter/material.dart';

class IncomeItemDetails extends StatelessWidget {
  final IncomeItemDetailsModel incomeItemDetailsModel;

  const IncomeItemDetails({super.key, required this.incomeItemDetailsModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeItemDetailsModel.color,
        ),
      ),
      title: Text(
        incomeItemDetailsModel.title,
        style: AppStyles.regular16,
      ),
      trailing: Text(
        incomeItemDetailsModel.percent,
        style: AppStyles.medium16.copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
