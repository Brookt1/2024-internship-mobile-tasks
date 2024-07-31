import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:product_6/widgets/custom_icon.dart';
import 'package:product_6/widgets/custom_image_container.dart';
import 'package:product_6/widgets/cutom_text.dart';
import 'package:product_6/route/route.dart' as route;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route.addUpdatePage);
        },
        child: Container(
          width: 72,
          height: 72,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.indigo,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    const CustomImageContainer(
                      imagePath: 'lib/assets/images/profile.jpg',
                      height: 50,
                      width: 50,
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText(
                            text: DateFormat('MMMM dd, yyyy')
                                .format(DateTime.now()),
                            fontSize: 12,
                            color: Colors.grey,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Row(
                          children: [
                            CustomText(
                              text: 'Hello',
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                            CustomText(
                              text: 'Yohannes',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const CustomIconContainer(
                          Icons.notification_add_rounded),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const CustomText(
                    text: 'Available Products',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, route.searchPage);
                    },
                    child: const CustomIconContainer(Icons.search),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, idx) => GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, route.detailPage);
                      },
                      child: prodcutList()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget prodcutList() {
  return Card(
    elevation: 10,
    child: Container(
      width: 366,
      height: 220,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: const Column(
        children: [
          CustomImageContainer(
            height: 160,
            width: double.infinity,
            imagePath: 'lib/assets/images/shoes.jpg',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              children: [
                Text(
                  'Derby Leather Shoes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '\$120',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              children: [
                CustomText(
                  text: " Men's shoe",
                  color: Colors.grey,
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                CustomText(
                  text: "(4.0)",
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
