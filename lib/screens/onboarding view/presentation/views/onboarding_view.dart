import 'package:drugo/core/utils/app_color.dart';
import 'package:drugo/screens/onboarding%20view/presentation/widgets/custom_nav_bar.dart';
import 'package:drugo/screens/onboarding%20view/presentation/widgets/get_buttons.dart';
import 'package:drugo/screens/onboarding%20view/presentation/widgets/onbaording_widget_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
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
                OnBoardingWidgetBody(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  controller: _controller,
                ),
                const SizedBox(height: 88),
                GetButtons(currentIndex: currentIndex, controller: _controller),
                const SizedBox(height: 17),
              ],
            ),
          ),
        ));
  }
}
