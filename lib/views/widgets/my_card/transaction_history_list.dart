import 'package:admin_dashboard/models/transaction_item_model.dart';
import 'package:admin_dashboard/views/widgets/my_card/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  static const items = [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022',
        amount: r'$20,129',
        isWithdraw: true),
    TransactionItemModel(
        title: 'Landing Page project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdraw: false),
    TransactionItemModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        amount: r'$200',
        isWithdraw: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionItemModel: e)).toList(),
    );
  }
}
