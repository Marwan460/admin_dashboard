import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:admin_dashboard/views/widgets/in_active_drawer_item.dart';
import 'package:admin_dashboard/views/widgets/users_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_images.dart';
import '../../models/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UsersInfoListTile(
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
              image: Assets.avatar1,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  item: DrawerItemModel(
                    title: "Setting system",
                    image: Assets.settings,
                  ),
                ),
                InActiveDrawerItem(
                  item: DrawerItemModel(
                    title: "Logout account",
                    image: Assets.logout,
                  ),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
