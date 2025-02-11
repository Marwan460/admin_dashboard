import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsersInfoListTile extends StatelessWidget {
  final String title, subtitle, image;

  const UsersInfoListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white2,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.semiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.regular12,
        ),
      ),
    );
  }
}
