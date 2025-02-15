import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Quick Invoice", style: AppStyles.semiBold20,),
        Spacer(),
        Icon(Icons.add, color: AppColors.blue,)
      ],
    );
  }
}
