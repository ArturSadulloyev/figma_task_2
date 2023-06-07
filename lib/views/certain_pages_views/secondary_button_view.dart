import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/fonts.dart';
import 'package:task2/services/constants/icons.dart';
import 'package:task2/services/constants/strings.dart';

class SecondaryButtonView extends StatelessWidget {
  final void Function() onPressed;

  const SecondaryButtonView({Key? key, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          backgroundColor: CustomColors.blue,
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height * 0.06,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // #
            const Image(
              image: CustomIcons.facebookLogo,
              width: 22,
            ),
            const SizedBox(width: 8),

            Text(
              CustomStrings.connectWithFacebookButtonText,
              style: CustomFonts.secondButtonTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
