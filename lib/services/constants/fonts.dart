import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';

abstract class CustomFonts {
  /// ```static const dMSans = 'DMSans';```
  static const dMSans = 'DMSans';

  static TextStyle headerTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.dMSans,
      fontWeight: FontWeight.w700,
      fontSize: 26,
      letterSpacing: -0.8,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle subTextStyle() {
    return TextStyle(
      fontFamily: CustomFonts.dMSans,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: -0.4,
      height: 1.8,
      color: CustomColors.lightBlack.withOpacity(0.6),
    );
  }

  static LinearGradient buttonGradient() {
    return const LinearGradient(
      colors: [
        CustomColors.primaryColor,
        CustomColors.purpleGradientColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  static ButtonStyle primaryButtonStyle() {
    return ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      shadowColor: CustomColors.transparent,
      backgroundColor: CustomColors.transparent,
    );
  }

  static TextStyle labelTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.dMSans,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      letterSpacing: -0.2,
      color: CustomColors.grey,
    );
  }

  static TextStyle fieldTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.dMSans,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: -0.2,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle firstRichTextStyle(FontWeight fontWeight, double fontSize, Color color) {
    return  TextStyle(
      fontFamily: CustomFonts.dMSans,
      fontWeight: fontWeight,
      fontSize: fontSize,
      letterSpacing: -0.2,
      height: 1.5,
      color: color,
    );
  }

  static TextStyle secondRichTextStyle(double fontSize) {
    return  TextStyle(
      fontFamily: CustomFonts.dMSans,
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
      letterSpacing: -0.2,
      color: CustomColors.darkBlack,
    );
  }

  static TextStyle secondButtonTextStyle() {
    return  const TextStyle(
      fontFamily: CustomFonts.dMSans,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      letterSpacing: -0.8,
      color: CustomColors.white,
    );
  }
}
