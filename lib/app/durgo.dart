import 'package:drugo/core/routes/app_router.dart';
import 'package:drugo/screens/onboarding%20view/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class Drugo extends StatelessWidget {
  const Drugo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnboardingView(),
      debugShowCheckedModeBanner: false,
      routes: buildAppRoutes(),
    );
  }
}
