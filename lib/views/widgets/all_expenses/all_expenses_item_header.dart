import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackgroundColor, imageColor;

  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageBackgroundColor,
      this.imageColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: imageBackgroundColor ?? AppColors.white2,
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? AppColors.blue, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Icon(
          Icons.keyboard_arrow_right,
          color: imageColor == null ? AppColors.primary : AppColors.white,
        )
      ],
    );
  }
}
