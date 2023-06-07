import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/icons.dart';
import 'package:task2/services/constants/strings.dart';
import 'package:task2/views/certain_pages_views/label_text_view.dart';

class CustomPasswordInputView extends StatelessWidget {
  const CustomPasswordInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // #
        LabelTextView(text: CustomStrings.passwordLabelText),

        // #
        CustomPasswordTextFieldView(),
      ],
    );
  }
}

class CustomPasswordTextFieldView extends StatefulWidget {
  const CustomPasswordTextFieldView({Key? key}) : super(key: key);

  @override
  State<CustomPasswordTextFieldView> createState() =>
      _CustomPasswordTextFieldViewState();
}

class _CustomPasswordTextFieldViewState
    extends State<CustomPasswordTextFieldView> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        obscureText: !isVisible,
        decoration: InputDecoration(
            prefixIcon: const Image(
              image: CustomIcons.lock,
              width: 30,
            ),
            prefix: const SizedBox(width: 20),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 0,
            ),
            suffixIcon: isVisible
                ? GestureDetector(
                    onTap: () {
                      isVisible = false;

                      setState(() {});
                    },
                    child: Transform.scale(
                      scale: 0.6,
                      child: const Image(
                        image: CustomIcons.visibilityOn,
                        width: 10,
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      isVisible = true;

                      setState(() {});
                    },
                    child: Transform.scale(
                      scale: 0.6,
                      child: const Image(
                        image: CustomIcons.visibilityOff,
                        width: 10,
                      ),
                    ),
                  ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: CustomColors.primaryColor,
              ),
            )),
      ),
    );
  }
}
