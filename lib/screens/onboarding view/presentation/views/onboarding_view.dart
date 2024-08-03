import 'package:drugo/core/utils/app_color.dart';
import 'package:drugo/core/utils/app_text_style.dart';
import 'package:drugo/core/widgets/custom_button.dart';
import 'package:drugo/screens/onboarding%20view/presentation/widgets/onbaording_widget_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  'Skip',
                  style: CustomTextStyles.poppins400style16,
                ),
                OnBoardingWidgetBody(),
                CustomButton(text: 'next')
              ],
            ),
          ),
        ));
  }
}
