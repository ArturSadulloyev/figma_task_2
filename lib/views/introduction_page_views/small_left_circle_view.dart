import 'package:flutter/material.dart';
import 'package:task2/services/constants/colors.dart';

class SmallLeftCircleView extends StatelessWidget {
  const SmallLeftCircleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: const SmallCircleClipper(),
      child: Container(
        width: 500,
        height: 700,
        color: CustomColors.primaryColor.withOpacity(0.4),
      ),
    );
  }
}

class SmallCircleClipper extends CustomClipper<Path> {
  const SmallCircleClipper();

  @override
  Path getClip(Size size) {
    final double x = size.width;
    final double y = size.height;

    Path path = Path()
      ..addOval(Rect.fromLTWH(-(x * 0.45), y * 0.4, y * 0.5, y * 0.5))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
