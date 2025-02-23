import 'package:admin_dashboard/views/widgets/all_expenses/all_expenses_item.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';
import '../../../models/all_expenses_item_model.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  List items = const [
    AllExpensesItemModel(
        image: Assets.balance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.income,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.expenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
