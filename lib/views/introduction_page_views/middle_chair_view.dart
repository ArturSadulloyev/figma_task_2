import 'package:flutter/material.dart';
import 'package:task2/services/constants/images.dart';

class MiddleChairView extends StatelessWidget {
  const MiddleChairView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(-0.1, 0.05),
      child: Image(
        image: CustomImages.chair,
        width: MediaQuery.of(context).size.width * 0.95,
      ),
    );
  }
}
