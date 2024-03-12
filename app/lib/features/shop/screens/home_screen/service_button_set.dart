import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/custom_shape/widgets/cards/main_card/service_card.dart';
import '../../../../utils/constants/image_strings.dart';
import '../growing_crops/display_all_growing_crops.dart';

class ServiceButtonsSet extends StatelessWidget {
  const ServiceButtonsSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {

          // this is service card title and image list
          List<Map<String, String>> ServiceCards = [
            {'title': 'Growing Crop 1', 'imageName': TImages.btnImg1},
            {'title': 'Growing Crop 1', 'imageName': TImages.btnImg1},
            {'title': 'Growing Crop 1', 'imageName': TImages.btnImg1},
            {'title': 'Growing Crop 1', 'imageName': TImages.btnImg1},
            {'title': 'Growing Crop 1', 'imageName': TImages.btnImg1},
            {'title': 'Growing Crop 1', 'imageName': TImages.btnImg1},
            {'title': 'Growing Crop 1', 'imageName': TImages.btnImg1},
          ];
          // this is service card  navigate pages list
          List<Widget> pageWidgets = [AllGrowingCrops()];

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ServiceCard(
                x: .4,
                height: 120,
                imageName: '${ServiceCards[index]['imageName']}',
                title: '${ServiceCards[index]['title']}',
                onTap: () {
                  Get.to(() => pageWidgets[index]);
                },
              ),
              ServiceCard(
                x: .4,
                height: 120,
                imageName: '${ServiceCards[index + 3]['imageName']}',
                title: '${ServiceCards[index + 3]['title']}',
                onTap: () {
                  Get.to(() => pageWidgets[index + 3]);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
