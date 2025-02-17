class TransactionItemModel {
  final String title, subtitle, amount;
  final bool isWithdraw;

  const TransactionItemModel(
      {required this.title,
      required this.subtitle,
      required this.amount,
      required this.isWithdraw});
}
