import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';

import 'in_active_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final bool isSelected;
  final AllExpensesItemModel itemModel;

  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}
