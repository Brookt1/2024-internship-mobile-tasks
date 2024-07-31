import 'package:flutter/material.dart';
import 'package:product_6/widgets/back_button.dart';
import 'package:product_6/widgets/custom_image_container.dart';
import 'package:product_6/widgets/custom_outlined_button.dart';
import 'package:product_6/widgets/cutom_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late int currentSize;

  @override
  void initState() {
    currentSize = 2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              const CustomImageContainer(
                height: 256,
                width: double.infinity,
                imagePath: 'lib/assets/images/shoes.jpg',
                borderRadius: BorderRadius.only(),
              ),
              backButton(context, Colors.indigo)
            ]),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      CustomText(
                        text: " Men's shoe",
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      CustomText(
                        text: "(4.0)",
                        color: Colors.grey,
                        fontSize: 16,
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Derby Leather Shoes',
                        style: TextStyle(
                          fontSize: 24,
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CustomText(
                      text: 'Size:',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          6,
                          (idx) => GestureDetector(
                            onTap: () {
                              setState(() {
                                currentSize = idx;
                              });
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: idx == currentSize
                                      ? const Color(0xFF3F51F3)
                                      : null,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(8),
                                  )),
                              child: Center(
                                  child: CustomText(
                                text: '${idx + 39}',
                                fontSize: 20,
                                color: idx == currentSize
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: const EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text:
                            "A derby leather shoe is a classic and versatile footwear option characterized by its open lacing system, where the shoelace eyelets are sewn on top of the vamp (the upper part of the shoe). This design feature provides a more relaxed and casual look compared to the closed lacing system of oxford shoes. Derby shoes are typically made of high-quality leather, known for its durability and elegance, making them suitable for both formal and casual occasions. With their timeless style and comfortable fit, derby leather shoes are a staple in any well-rounded wardrobe.",
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      CustomOutlinedButton(
                        text: "DELETE",
                        width: 150,
                        height: 50,
                        color: Colors.red,
                      ),
                      Spacer(),
                      CustomOutlinedButton(
                        text: "UPDATE",
                        width: 150,
                        height: 50,
                        backgroundColor: Color(0xFF3F51F3),
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
