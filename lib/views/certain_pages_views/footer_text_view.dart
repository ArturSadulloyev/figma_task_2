import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/fonts.dart';

class FooterTextView extends StatelessWidget {
  final String firstText;
  final String secondText;

  const FooterTextView({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: CustomFonts.firstRichTextStyle(
            FontWeight.w500,
            14,
            CustomColors.lightBlack.withOpacity(0.6),
          ),
          children: [
            TextSpan(text: firstText),
            TextSpan(
              text: secondText,
              style: CustomFonts.secondRichTextStyle(16),
            ),
          ],
        ),
      ),
    );
  }
}
