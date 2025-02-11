import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

import 'active_drawer_item.dart';
import 'in_active_drawer_item.dart';


class DrawerItem extends StatelessWidget {
  final bool isSelected;
  final DrawerItemModel item;

  const DrawerItem({super.key, required this.item, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}


