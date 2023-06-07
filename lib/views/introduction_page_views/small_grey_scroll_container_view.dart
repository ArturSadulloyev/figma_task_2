import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';

class SmallGreyScrollContainerView extends StatelessWidget {
  const SmallGreyScrollContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(2.5)),
        color: CustomColors.darkBlack.withOpacity(0.2),
      ),
    );
  }
}
