import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:admin_dashboard/views/widgets/users_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: const Column(
        children: [
          UsersInfoListTile(
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
            image: Assets.avatar1,
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
