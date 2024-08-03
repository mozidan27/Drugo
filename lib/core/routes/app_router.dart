import 'package:drugo/screens/splash%20view/views/splash_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/splashview': (context) => const SplashView(),
  };
}
