import 'package:app/common/custom_shape/containers/circular_container.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(top: -130, left: -5, child: TCircularContainer()),
          Positioned(top: 5, left: -130, child: TCircularContainer())
        ],
      ),
    );
  }
}
