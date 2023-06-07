import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';

class BigRightCircleView extends StatelessWidget {
  const BigRightCircleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: const BigCircleClipper(),
      child: Container(
        width: 500,
        height: 500,
        color: CustomColors.primaryColor,
      ),
    );
  }
}

class BigCircleClipper extends CustomClipper<Path> {
  const BigCircleClipper();

  @override
  Path getClip(Size size) {
    final double x = size.width;
    final double y = size.height;

    Path path = Path()
      ..addOval(Rect.fromLTWH(x * 0.2, -(y * 0.2), y * 1.1, y * 1.1))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

