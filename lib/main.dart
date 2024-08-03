import 'package:drugo/core/routes/app_router.dart';
import 'package:drugo/screens/splash%20view/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Drugo());
}

class Drugo extends StatelessWidget {
  const Drugo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      routes: buildAppRoutes(),
    );
  }
}
