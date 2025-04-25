import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_controller.dart';

class ProgressPageIndicator extends StatelessWidget {
  const ProgressPageIndicator({
    super.key,this.color,required this.width,required this.height, required this.dotColor, required this.activeDotColor,
  });
  final Color? color;
  final double width;
  final Color dotColor;
  final Color activeDotColor;
  final double height;
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return SmoothPageIndicator(
      effect: ExpandingDotsEffect(
          activeDotColor: activeDotColor,
          dotColor: dotColor,
          dotHeight: height,
          dotWidth: width
      ),
      controller: controller.pageController,
      onDotClicked: controller.dotNavigation,
      count: 3,);
  }
}
