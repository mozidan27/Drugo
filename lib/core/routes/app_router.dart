import 'package:drugo/screens/home%20view/presentation/screens/home_view.dart';
import 'package:drugo/screens/onboarding%20view/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/onboardingview': (context) => const OnboardingView(),
    '/homepage': (context) => HomePage(),
  };
}
