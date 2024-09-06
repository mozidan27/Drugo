import 'package:drugo/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final poppins400style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    fontFamily: "Poppins",
  );
  static final poppins500style18 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      fontFamily: "Poppins",
      overflow: TextOverflow.ellipsis);

  static final poppins500style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: "Poppins",
  );

  static final poppins300style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
    fontFamily: "Poppins",
  );

  static final poppins500style20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontFamily: "Poppins",
      overflow: TextOverflow.ellipsis,
      textBaseline: TextBaseline.alphabetic);

  static final poppins300style10 = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      color: AppColors.black,
      fontFamily: "Poppins",
      overflow: TextOverflow.ellipsis,
      textBaseline: TextBaseline.alphabetic);
}
