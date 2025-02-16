import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/views/widgets/users_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';

class LatestTransactionsList extends StatelessWidget {
  const LatestTransactionsList({super.key});

  static const items = [
    UserInfoModel(image: Assets.avatar2, title: "Madrani Andi", subTitle: "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.avatar3, title: "Josua Nunito", subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(image: Assets.avatar2, title: "Madrani Andi", subTitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(child: UsersInfoListTile(userInfoModel: e));
        }).toList(),
      ),
    );
  }
}
