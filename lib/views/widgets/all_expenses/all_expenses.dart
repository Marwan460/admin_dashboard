import 'package:admin_dashboard/views/widgets/all_expenses/all_expenses_header.dart';
import 'package:admin_dashboard/views/widgets/all_expenses/all_expenses_item_list.dart';
import 'package:admin_dashboard/views/widgets/custom_background_widget.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItemList(),
        ],
      ),
    );
  }
}
