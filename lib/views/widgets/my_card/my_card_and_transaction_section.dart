import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/views/widgets/custom_background_widget.dart';
import 'package:admin_dashboard/views/widgets/my_card/my_card_section.dart';
import 'package:admin_dashboard/views/widgets/my_card/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: AppColors.white3,
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}
