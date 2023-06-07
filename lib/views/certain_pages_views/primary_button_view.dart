import 'package:flutter/material.dart';
import 'package:task2/services/constants/fonts.dart';

class PrimaryButtonView extends StatelessWidget {
  final void Function() onPressed;
  final ButtonTextView buttonText;
  final ButtonIconView buttonIcon;
  final double height;

  const PrimaryButtonView({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.buttonIcon, required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        gradient: CustomFonts.buttonGradient(),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: CustomFonts.primaryButtonStyle(),
        child: Row(
          children: [
            const Spacer(flex: 3),

            // #
            buttonText,
            const Spacer(flex: 2),

            // #
            buttonIcon,
          ],
        ),
      ),
    );
  }
}

class ButtonIconView extends StatelessWidget {
  final AssetImage icon;

  const ButtonIconView({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: icon,
      width: 30,
    );
  }
}

class ButtonTextView extends StatelessWidget {
  final String text;

  const ButtonTextView({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: CustomFonts.dMSans,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
    );
  }
}
