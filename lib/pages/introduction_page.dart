import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';
import 'package:task2/services/constants/icons.dart';
import 'package:task2/services/constants/strings.dart';
import 'package:task2/views/certain_pages_views/primary_button_view.dart';
import 'package:task2/views/introduction_page_views/big_right_circle_view.dart';
import 'package:task2/views/introduction_page_views/middle_chair_view.dart';
import 'package:task2/views/introduction_page_views/small_grey_scroll_container_view.dart';
import 'package:task2/views/introduction_page_views/small_left_circle_view.dart';
import 'package:task2/views/introduction_page_views/small_purple_scroll_container_view.dart';
import 'package:task2/views/introduction_page_views/sub_text_view.dart';
import 'package:task2/views/introduction_page_views/welcome_to_qu_store_text_view.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goToSignUpPage() {
      Navigator.pushReplacementNamed(context, '/sign_up_page');
    }

    return Scaffold(
      backgroundColor: CustomColors.white,
      body: Column(
        children: [
          // #first side
          const Expanded(
            flex: 4,
            child: Stack(
              children: [
                // #big right circle
                BigRightCircleView(),

                // #left small circle
                SmallLeftCircleView(),

                // #middle chair
                MiddleChairView(),

                // #scrolls
                Align(
                  alignment: Alignment(0, 0.71),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // #first small grey container
                      SmallGreyScrollContainerView(),
                      SizedBox(width: 8),

                      // #purple small container
                      SmallPurpleScrollContainerView(),
                      SizedBox(width: 8),

                      // #second small grey container
                      SmallGreyScrollContainerView(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // #
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  // #welcome text
                  const WelcomeToQuStoreView(),
                  const Spacer(),

                  // #description
                  const SubTextView(),
                  const Spacer(flex: 5),

                  PrimaryButtonView(
                    onPressed: goToSignUpPage,
                    buttonText: const ButtonTextView(
                        text: CustomStrings.getStartedButtonText),
                    buttonIcon:
                        const ButtonIconView(icon: CustomIcons.arrowRight),
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  const Spacer(flex: 7),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
