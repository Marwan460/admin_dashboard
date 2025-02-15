import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsersInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;

  const UsersInfoListTile(
      {super.key, required this.userInfoModel,});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white2,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: AppStyles.semiBold16,
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyles.regular12,
        ),
      ),
    );
  }
}
