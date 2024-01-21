import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/dot_indicator.dart';
import 'package:admin_dash_board/widgets/my_cart_page_view.dart';
import 'package:flutter/material.dart';

class MyCartSection extends StatefulWidget {
  const MyCartSection({super.key});

  @override
  State<MyCartSection> createState() => _MyCartSectionState();
}

class _MyCartSectionState extends State<MyCartSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My cart',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 20),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
