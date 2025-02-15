import 'package:admin_dashboard/views/widgets/custom_background_widget.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          QuickInvoiceHeader()
        ],
      ),
    );
  }
}
