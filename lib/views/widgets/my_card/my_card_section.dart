import 'package:admin_dashboard/views/widgets/my_card/my_cards_page_view.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import 'dots_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text("My Cards", style: AppStyles.semiBold20(context),),
        const SizedBox(height: 20,),
        MyCardsPageView(pageController: pageController,),
        const SizedBox(height: 18,),
        DotsIndicator(currentPageIndex: currentPageIndex,),
      ],
    );
  }
}
