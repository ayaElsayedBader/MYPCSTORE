import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/manger/size_app.dart';

class BuildSmoothPageIndicatorOnBoarding extends StatelessWidget {
  const BuildSmoothPageIndicatorOnBoarding(
      {super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: SizeApp.size16),
      child: SmoothPageIndicator(
        controller: pageController,
        count: SizeApp.size3.toInt(),
      ),
    );
  }
}
