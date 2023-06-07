import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/icons.dart';
import 'package:task2/services/constants/strings.dart';
import 'package:task2/views/certain_pages_views/custom_password_input_view.dart';
import 'package:task2/views/certain_pages_views/custom_user_name_email_input_view.dart';
import 'package:task2/views/certain_pages_views/footer_text_view.dart';
import 'package:task2/views/certain_pages_views/header_sub_text_view.dart';
import 'package:task2/views/certain_pages_views/header_text_icon_view.dart';
import 'package:task2/views/certain_pages_views/header_text_view.dart';
import 'package:task2/views/certain_pages_views/label_text_view.dart';
import 'package:task2/views/certain_pages_views/primary_button_view.dart';
import 'package:task2/views/certain_pages_views/secondary_button_view.dart';
import 'package:task2/views/sign_up_page_views/checkbox_agreement_text_view.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 2),

            // #location
            const HeaderTextIconView(),
            const Spacer(flex: 3),

            // #getting started header text
            const HeaderTextView(),
            const SizedBox(height: 8),

            // #creating account sub text
            const HeaderSubTextView(),
            const Spacer(flex: 3),

            // #mail input
            const CustomInputUserNameEmailView(
              labelText: LabelTextView(text: CustomStrings.emailLabelText),
              customTextField:
                  CustomUserNameEmailTextFieldView(icon: CustomIcons.mail),
            ),
            const Spacer(flex: 3),

            // #user input
            const CustomInputUserNameEmailView(
              labelText: LabelTextView(text: CustomStrings.userNameLabelText),
              customTextField:
                  CustomUserNameEmailTextFieldView(icon: CustomIcons.person),
            ),
            const Spacer(flex: 2),

            // #password text field
            const CustomPasswordInputView(),
            const Spacer(flex: 1),

            // #check box and text
            const CheckboxAgreementTextView(),
            const Spacer(flex: 3),

            // #footer button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: PrimaryButtonView(
                onPressed: () {},
                buttonText:
                    const ButtonTextView(text: CustomStrings.signUpButtonText),
                buttonIcon: const ButtonIconView(icon: CustomIcons.logIn),
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
            const Spacer(flex: 1),

            // #
            const FooterTextView(
              firstText: CustomStrings.firstFooterSignInText,
              secondText: CustomStrings.secondFooterSignInText,
            ),
            const Spacer(flex: 1),

            // #
            const Divider(),
            const Spacer(flex: 1),

            // #
            SecondaryButtonView(
              onPressed: () {},
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

// app bar 62
// header text 58
// email label text 40
// user name label text 40
// password label text 24
// agreement text 16
// sign up button text 36
// rich text 16
// divider 23
// footer button 24
