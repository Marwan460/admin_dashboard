import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice/custom_text_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  final String title, hint;
  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.medium16,),
        CustomTextField(hint: hint)
      ],
    );
  }
}
