import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../models/transaction_item_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionItemModel transactionItemModel;

  const TransactionItem({super.key, required this.transactionItemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.white2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.semiBold16,
        ),
        subtitle: Text(
          transactionItemModel.subtitle,
          style: AppStyles.regular16.copyWith(color: AppColors.grey),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.semiBold20.copyWith(
            color: transactionItemModel.isWithdraw
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
