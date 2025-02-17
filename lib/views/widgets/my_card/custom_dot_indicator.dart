import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
        color: isActive ? AppColors.blue : AppColors.white,
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
