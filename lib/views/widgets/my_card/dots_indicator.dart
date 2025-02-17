import 'package:admin_dashboard/views/widgets/my_card/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          List.generate(3, (index) => const CustomDotIndicator(isActive: true)),
    );
  }
}
