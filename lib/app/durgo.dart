import 'package:drugo/core/database/cache/cache_helper.dart';
import 'package:drugo/core/routes/app_router.dart';
import 'package:drugo/core/services/service_locator.dart';
import 'package:drugo/screens/home%20view/presentation/home_view.dart';
import 'package:drugo/screens/onboarding%20view/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Drugo extends StatelessWidget {
  Drugo({super.key});

  bool isOnBoardingVisited =
      getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isOnBoardingVisited ? const HomePage() : const OnboardingView(),
      debugShowCheckedModeBanner: false,
      routes: buildAppRoutes(),
    );
  }
}
