import 'package:drugo/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({required this.controller, super.key});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: SwapEffect(
          activeDotColor: AppColors.primaryColor,
          dotColor: AppColors.white,
          dotHeight: 7,
          dotWidth: 20,
          type: SwapType.yRotation),
    );
  }
}
