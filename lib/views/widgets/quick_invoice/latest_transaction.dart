import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'latest_transactions_list.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.medium16(context),),
        const SizedBox(height: 12,),
        const LatestTransactionsList(),
      ],
    );
  }
}
