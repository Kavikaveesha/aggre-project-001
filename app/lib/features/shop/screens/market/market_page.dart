import 'package:app/features/shop/screens/market/products/all_products_grid/all_products_grid.dart';
import 'package:flutter/material.dart';
import '../../../../common/custom_shape/containers/gree_color_container.dart';
import '../../../../common/custom_shape/containers/search_container.dart';
import '../../../../common/custom_shape/widgets/appbar/app_bar.dart';
import '../../../../utils/constants/image_strings.dart';
import 'products/new_products/new_products_slider.dart';
import 'products/top_products/top_products_row.dart';
import '../test.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 240, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Custom App Bar
            CustomAppBar(
                appbarTitle: 'Welcome to ECO Net Market',
                appbarSubtitle: 'Lets buy some fresh and organic foods',
                profileImage: TImages.farmer1,
                onTapProfile: () {}),

            GreenContainer(
                height: mediaQueryHeight * .4,
                child: Column(
                  children: [
                    // Search container
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: SearchBarContainer(
                        resultPage: Test(),
                        text: 'Search......',
                      ),
                    ),
                    SizedBox(height: mediaQueryHeight * 0.005),

                    // TopProducts row
                    const TopProducts()
                  ],
                )),

            //  This is Latest Product Slider
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    Text(
                      'Latest Products',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: mediaQueryHeight * .01,
                    ),
                    const NewProductsSlider()
                  ],
                )),

            // This is All Products showing grid

            const AllProductsGrid()
          ],
        ),
      ),
    );
  }
}
