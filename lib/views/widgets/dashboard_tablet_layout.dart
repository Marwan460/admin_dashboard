import 'package:admin_dashboard/views/widgets/drawer/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/income/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card/my_card_and_transaction_section.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice/all_expenses_and_quick_invoice_section.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  AllExpensesAndQuickInvoiceSection(),
                  SizedBox(height: 24),
                  MyCardAndTransactionSection(),
                  SizedBox(height: 24),
                  IncomeSection(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
