import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/icons.dart';
import 'package:task2/views/certain_pages_views/label_text_view.dart';

class CustomInputUserNameEmailView extends StatelessWidget {
  final LabelTextView labelText;
  final CustomUserNameEmailTextFieldView customTextField;

  const CustomInputUserNameEmailView({
    Key? key,
    required this.labelText, required this.customTextField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // #
        labelText,

        // #
        customTextField,
      ],
    );
  }
}

class CustomUserNameEmailTextFieldView extends StatefulWidget {
  final AssetImage icon;
  const CustomUserNameEmailTextFieldView({Key? key, required this.icon,}) : super(key: key);

  @override
  State<CustomUserNameEmailTextFieldView> createState() => _CustomUserNameEmailTextFieldViewState();
}

class _CustomUserNameEmailTextFieldViewState extends State<CustomUserNameEmailTextFieldView> {
  bool isCorrectEmail = false;

  void checkEmail(String email) {
    if (RegExp(r'^[a-zA-Z]{3,}@gmail\.[a-z]{2,}$').hasMatch(email)) {
      isCorrectEmail = true;
    } else {
      isCorrectEmail = false;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        onChanged: checkEmail,
        style: const TextStyle(),
        decoration: InputDecoration(
          prefixIcon: Image(
            image: widget.icon,
            width: 30,
          ),
          prefix: const SizedBox(width: 20),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 0,
          ),
          suffixIcon: isCorrectEmail
              ? Transform.scale(
            scale: 0.7,
            child: const Image(
              image: CustomIcons.checkMark,
              width: 10,
            ),
          )
              : null,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}



