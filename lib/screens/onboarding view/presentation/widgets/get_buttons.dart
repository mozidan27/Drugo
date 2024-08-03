import 'package:drugo/core/database/cache/cache_helper.dart';
import 'package:drugo/core/funcations/navigation.dart';
import 'package:drugo/core/services/service_locator.dart';
import 'package:drugo/core/utils/app_string.dart';
import 'package:drugo/core/widgets/custom_button.dart';
import 'package:drugo/screens/onboarding%20view/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});

  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return currentIndex == onBoardingData.length - 1
        ? CustomButton(
            text: AppStrings.letsStart,
            onTap: () {
              getIt<CacheHelper>()
                  .saveData(key: "isOnBoardingVisited", value: true);
              customReplacementNavigate(context, '/homepage');
            },
          )
        : CustomButton(
            text: AppStrings.next,
            onTap: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            },
          );
  }
}
