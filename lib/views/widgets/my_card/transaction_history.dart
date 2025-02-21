import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/my_card/transaction_history_list.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('Transaction History', style: AppStyles.semiBold20(context),),
            Text('See all', style: AppStyles.medium16(context).copyWith(color: AppColors.blue),)
          ],
        ),
        const SizedBox(height: 20,),
        Text('13 April 2022', style: AppStyles.medium16(context).copyWith(color: AppColors.grey,),),
        const SizedBox(height: 16,),
        const TransactionHistoryList(),
      ],
    );
  }
}
