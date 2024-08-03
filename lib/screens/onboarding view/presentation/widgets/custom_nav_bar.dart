import 'package:drugo/core/database/cache/cache_helper.dart';
import 'package:drugo/core/funcations/navigation.dart';
import 'package:drugo/core/services/service_locator.dart';
import 'package:drugo/core/utils/app_string.dart';
import 'package:drugo/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
        customReplacementNavigate(context, '/homepage');
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.skip,
          style: CustomTextStyles.poppins400style16,
        ),
      ),
    );
  }
}
