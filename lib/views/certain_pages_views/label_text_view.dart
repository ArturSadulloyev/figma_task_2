import 'package:flutter/material.dart';
import 'package:task2/services/constants/fonts.dart';

class LabelTextView extends StatelessWidget {
  final String text;

  const LabelTextView({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Text(
        text,
        style: CustomFonts.labelTextStyle(),
      ),
    );
  }
}
