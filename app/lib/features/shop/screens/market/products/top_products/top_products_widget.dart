import 'package:app/common/custom_shape/widgets/cards/product_card/top_product_card.dart';
import 'package:app/features/shop/screens/market/products/product_detail_page/product_detail_page.dart';
import 'package:app/features/shop/screens/market/products/top_products/top_product_card.dart';
import 'package:app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopProductHorisontalRowWidget extends StatelessWidget {
  const TopProductHorisontalRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 160,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, index) {
              return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(12.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: TopProductCard(
                      productName: 'Product Name index $index',
                      productImage: TImages.p3,
                      onTap: () {
                        Get.to(() => ProductDetailPage(productIndex: index));
                      }));
            }));
  }
}
