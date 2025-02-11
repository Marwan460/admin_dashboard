import 'package:flutter/material.dart';

import '../../core/utils/app_images.dart';
import '../../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int selectedIndex = 0;
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: "Dashboard", image: Assets.dashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.myTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.statistics),
    DrawerItemModel(title: "Wallet", image: Assets.wallet),
    DrawerItemModel(title: "My Investments", image: Assets.myInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                item: items[index],
                isSelected: selectedIndex == index,
              ),
            ),
          );
        });
  }
}
