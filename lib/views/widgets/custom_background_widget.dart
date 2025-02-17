import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomBackgroundWidget extends StatelessWidget {
  final double? padding;
  final Widget child;
  final EdgeInsetsGeometry? margin;
  const CustomBackgroundWidget({super.key, required this.child, this.padding, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
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
