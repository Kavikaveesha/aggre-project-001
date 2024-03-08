import 'package:flutter/material.dart';

import 'circular_container.dart';

class CircularDesignContainer extends StatelessWidget {
  const CircularDesignContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(top: -130, left: -5, child: TCircularContainer()),
        Positioned(top: -20, left: -130, child: TCircularContainer()),
      ],
    );
  }
}
