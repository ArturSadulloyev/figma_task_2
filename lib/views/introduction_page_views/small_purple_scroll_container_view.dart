import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';

class SmallPurpleScrollContainerView extends StatelessWidget {
  const SmallPurpleScrollContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2.5)),
        color: CustomColors.primaryColor,
      ),
    );
  }
}
