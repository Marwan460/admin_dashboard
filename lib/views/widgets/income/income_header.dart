import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text('Income', style: AppStyles.semiBold20(context),),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: AppColors.white3),
            ),
          ),
          child:  Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.medium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(
                Icons.keyboard_arrow_down_sharp,
                color: AppColors.primary,
              )
            ],
          ),
        ),
      ],
    );
  }
}
