import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomBackgroundWidget extends StatelessWidget {
  final double? padding;
  final Widget child;
  const CustomBackgroundWidget({super.key, required this.child, this.padding,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
