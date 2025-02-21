import 'package:admin_dashboard/views/widgets/drawer/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/income/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card/my_card_and_transaction_section.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice/all_expenses_and_quick_invoice_section.dart';
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
        SizedBox(width: 32),
       Expanded(
         flex: 3,
         child: CustomScrollView(
           slivers: [
             SliverFillRemaining(
               hasScrollBody: false,
               fillOverscroll: true,
               child: Row(
                 children: [
                   Expanded(
                     flex: 2,
                     child: Padding(
                       padding: EdgeInsets.only(top: 40),
                       child: AllExpensesAndQuickInvoiceSection(),
                     ),
                   ),
                   SizedBox(width: 24),
                   Expanded(
                     child: Padding(
                       padding: EdgeInsets.only(top: 40),
                       child: Column(
                         children: [
                           MyCardAndTransactionSection(),
                           SizedBox(height: 24),
                           Flexible(child: IncomeSection()),
                         ],
                       ),
                     ),
                   ),
                 ],
               )
             )
           ],
         ),
       ),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
