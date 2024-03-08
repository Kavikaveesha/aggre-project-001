import 'package:app/common/custom_shape/widgets/cards/main_card/main_card.dart';
import 'package:app/common/custom_shape/widgets/slider/top_products_row/top_products_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/colors.dart';
import 'package:app/common/custom_shape/containers/search_container.dart';
import 'package:app/features/shop/screens/test.dart';
import 'package:app/utils/constants/image_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 240, 240),
      appBar: AppBar(
        backgroundColor: TColors.appPrimaryColor,
        title: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // welcome text
              Text('Welcome Kavindu',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: const Color.fromARGB(255, 248, 239, 239))),
              // Welcome text subtitle
              Text('Lets build an agricultural country',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(color: const Color.fromARGB(255, 218, 214, 214))),
            ],
          ),
        ),
        actions: [
          // this is profile icon.navigate to profile page
          InkWell(
            onTap: () {
              // Navigate to the profile page when the profile button is clicked
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(() => const Test());
                },
                child: const CircleAvatar(
                  radius: 16, // Adjust the size as needed
                  backgroundImage:
                      AssetImage(""), // Replace with your image asset
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // thia is green color container
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              color: TColors.appPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // This is search bar container
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SearchBarContainer(resultPage: Test()),
                  ),
                  SizedBox(height: mediaQuery * 0.005),

                  //This is top Products
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // top products title
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Top Products',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    'More Products',
                                    style: TextStyle(
                                        fontSize: 15, color: TColors.grey),
                                  )),
                            ],
                          ),
                        ),
                        const TopProducts()
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Main Category buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: MainCard(
                x: 1,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Center(
                            child: Icon(
                              Icons.shop_two_outlined,
                              color: TColors.appPrimaryColor,
                              size: 60.0,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Visit To Market Place',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight
                                          .bold, // Add your additional font weight here
                                    ),
                              ),
                              Text(
                                'You can buy Aggriculture products \nusing our products market place',
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Add GridView here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  List<String> titles = [
                    'Growing Crop 1',
                    'Growing Crop 2',
                    'Growing Crop 3',
                    'Growing Crop 4',
                    'Growing Crop 5',
                    'Growing Crop 6',
                  ];

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MainCard(
                          x: .4,
                          height: 120,
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  TImages
                                      .btnImg1, // Replace with your image asset
                                  width: 80.0, // Adjust width as needed
                                  height: 80.0, // Adjust height as needed
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                titles[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight
                                          .bold, // Add your additional font weight here
                                    ),
                              )
                            ],
                          )),
                      MainCard(
                          x: .4,
                          height: 120,
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  TImages
                                      .btnImg1, // Replace with your image asset
                                  width: 80.0, // Adjust width as needed
                                  height: 80.0, // Adjust height as needed
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                titles[index + 3],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight
                                          .bold, // Add your additional font weight here
                                    ),
                              )
                            ],
                          )),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildDistractorCard(String title, String subtitle) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(subtitle),
          ],
        ),
      ),
    );
  }
}
