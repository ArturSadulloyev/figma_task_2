import 'package:flutter/material.dart';
import 'package:task2/services/constants/fonts.dart';
import 'package:task2/services/constants/strings.dart';

class HeaderSubTextView extends StatelessWidget {
  const HeaderSubTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Text(
        CustomStrings.creatingAccountHeaderSubText,
        style: CustomFonts.subTextStyle(),
      ),
    );
  }
}
