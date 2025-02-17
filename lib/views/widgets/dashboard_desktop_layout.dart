import 'package:admin_dashboard/views/widgets/all_expenses/all_expenses.dart';
import 'package:admin_dashboard/views/widgets/drawer/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/my_card/my_card.dart';
import 'package:admin_dashboard/views/widgets/my_card/my_card_and_transaction_section.dart';
import 'package:admin_dashboard/views/widgets/my_card/my_card_section.dart';
import 'package:admin_dashboard/views/widgets/my_card/my_cards_page_view.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice/quick_invoice.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice()
              ],
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardAndTransactionSection()),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
