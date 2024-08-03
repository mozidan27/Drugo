import 'package:drugo/core/utils/app_color.dart';
import 'package:drugo/core/utils/app_string.dart';
import 'package:drugo/core/widgets/custom_button.dart';
import 'package:drugo/screens/onboarding%20view/presentation/widgets/custom_nav_bar.dart';
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
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 40),
                const CustomNavBar(),
                const SizedBox(height: 32),
                OnBoardingWidgetBody(),
                const SizedBox(height: 88),
                CustomButton(
                  text: AppStrings.next,
                  onTap: () {},
                ),
                const SizedBox(height: 17),
              ],
            ),
          ),
        ));
  }
}
