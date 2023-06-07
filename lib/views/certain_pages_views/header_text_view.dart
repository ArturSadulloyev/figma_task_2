import 'package:flutter/material.dart';
import 'package:task2/services/constants/fonts.dart';
import 'package:task2/services/constants/strings.dart';

class HeaderTextView extends StatelessWidget {
  const HeaderTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Text(
        CustomStrings.gettingStartedHeaderText,
        style: CustomFonts.headerTextStyle(),
      ),
    );
  }
}
