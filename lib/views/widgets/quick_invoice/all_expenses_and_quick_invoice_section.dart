import 'package:admin_dashboard/views/widgets/quick_invoice/quick_invoice.dart';
import 'package:flutter/material.dart';

import '../all_expenses/all_expenses.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
    );
  }
}
