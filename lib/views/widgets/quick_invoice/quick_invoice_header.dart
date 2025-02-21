import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text("Quick Invoice", style: AppStyles.semiBold20(context),),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: AppColors.white2,
          ),
          child: const Center(
            child: Icon(Icons.add , color: AppColors.blue,)
          ),
        ),
      ],
    );
  }
}
