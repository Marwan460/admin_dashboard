import 'package:admin_dashboard/views/widgets/custom_background_widget.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice/latest_transaction.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice/quick_invoice_header.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24,),
          LatestTransaction(),
          Divider(height: 48, thickness: 0.5,),
          TitleTextField(title: "Customer name", hint: "Type customer name"),
        ],
      ),
    );
  }
}
