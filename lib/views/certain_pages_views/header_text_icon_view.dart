import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/fonts.dart';
import 'package:task2/services/constants/icons.dart';
import 'package:task2/services/constants/strings.dart';

class HeaderTextIconView extends StatelessWidget {
  const HeaderTextIconView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        children: [
          // #icon location
          Image(
            image: CustomIcons.location,
            width: 28,
          ),
          SizedBox(width: 10),

          // #text location
          Text(
            CustomStrings.location,
            style: TextStyle(
              fontFamily: CustomFonts.dMSans,
              fontWeight: FontWeight.w700,
              fontSize: 14,
              letterSpacing: -0.2,
              color: CustomColors.lightBlack,
            ),
          ),
        ],
      ),
    );
  }
}
