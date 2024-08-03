import 'package:drugo/screens/onboarding%20view/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/onboardingview': (context) => const OnboardingView(),
  };
}
