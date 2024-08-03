import 'package:drugo/app/durgo.dart';
import 'package:drugo/core/database/cache/cache_helper.dart';
import 'package:drugo/core/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(Drugo());
}
