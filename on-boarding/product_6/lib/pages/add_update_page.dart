import 'package:flutter/material.dart';
import 'package:product_6/widgets/back_button.dart';
import 'package:product_6/widgets/custom_outlined_button.dart';
import 'package:product_6/widgets/custom_textfiled.dart';
import 'package:product_6/widgets/cutom_text.dart';

class AddUpdatePage extends StatelessWidget {
  const AddUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            backButton(
              context,
              const Color(
                0xFF3F51F3,
              ),
            ),
            const SizedBox(
              width: 70,
            ),
            const CustomText(
              text: 'Add Product',
              fontSize: 16,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    )),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 36,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomText(
                      text: 'upload image',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: 'name',
                  )),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 40,
                width: double.infinity,
                child: CustomTextfiled(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: 'category',
                  )),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 40,
                width: double.infinity,
                child: CustomTextfiled(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: 'price',
                  )),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 40,
                width: double.infinity,
                child: CustomTextfiled(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: 'decription',
                  )),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 80,
                width: double.infinity,
                child: CustomTextfiled(),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomOutlinedButton(
                text: 'ADD',
                width: 300,
                height: 44,
                backgroundColor: Color(0xFF3F51F3),
                color: Colors.white,
              ),
              const CustomOutlinedButton(
                text: 'DELETE',
                width: 300,
                height: 44,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
