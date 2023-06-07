import 'package:flutter/material.dart';
import 'package:task2/services/constants/fonts.dart';
import 'package:task2/services/constants/strings.dart';

class SubTextView extends StatelessWidget {
  const SubTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      CustomStrings.applicationDescription,
      textAlign: TextAlign.center,
      style: CustomFonts.subTextStyle(),
    );
  }
}
