import 'package:admin_dashboard/views/widgets/quick_invoice/all_expenses_and_quick_invoice_section.dart';
import 'package:flutter/material.dart';

import 'income/income_section.dart';
import 'my_card/my_card_and_transaction_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionSection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
