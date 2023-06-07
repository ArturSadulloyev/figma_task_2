import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/fonts.dart';
import 'package:task2/services/constants/strings.dart';

class CheckboxAgreementTextView extends StatelessWidget {
  const CheckboxAgreementTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          // #
          CustomCheckbox(),

          // #
          AgreementTextView(),
        ],
      ),
    );
  }
}

class AgreementTextView extends StatelessWidget {
  const AgreementTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: CustomFonts.firstRichTextStyle(
          FontWeight.w400,
          13,
          CustomColors.darkBlack,
        ),
        children: [
          const TextSpan(text: CustomStrings.firstAgreementText),
          TextSpan(
            text: CustomStrings.secondAgreementText,
            style: CustomFonts.secondRichTextStyle(13),
          ),
        ],
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({Key? key}) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (value) {
        isChecked = value!;

        setState(() {});
      },
    );
  }
}
