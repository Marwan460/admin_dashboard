import 'package:admin_dashboard/models/income_item_details_model.dart';
import 'package:admin_dashboard/views/widgets/income/income_item_details.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeItemDetailsModel(
        title: 'Design services', percent: '40%', color: Color(0xff208CC8)),
    IncomeItemDetailsModel(
        title: 'Design product', percent: '25%', color: AppColors.blue),
    IncomeItemDetailsModel(
        title: 'Product royalty', percent: '20%', color: AppColors.primary),
    IncomeItemDetailsModel(
      title: 'other',
      percent: '22%',
      color: Color(0xff208CC8),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) =>
          IncomeItemDetails(incomeItemDetailsModel: items[index]),
    );
  }
}
