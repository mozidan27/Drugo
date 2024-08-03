import 'package:drugo/core/utils/app_assets.dart';
import 'package:drugo/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.imagesDoc1),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SwapEffect(
                    activeDotColor: AppColors.primaryColor,
                    dotColor: AppColors.white,
                    dotHeight: 10,
                    dotWidth: 28,
                    type: SwapType.yRotation),

                //  const JumpingDotEffect(
                //   dotHeight: 16,
                //   dotWidth: 16,
                //   jumpScale: .7,
                //   verticalOffset: 15,
                // ),
              )
            ],
          );
        },
      ),
    );
  }
}
