import 'package:flutter/material.dart';
import 'package:task2/services/constants/fonts.dart';
import 'package:task2/services/constants/strings.dart';

class WelcomeToQuStoreView extends StatelessWidget {
  const WelcomeToQuStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      CustomStrings.welcomeToQuStore,
      style: CustomFonts.headerTextStyle(),
    );
  }
}
