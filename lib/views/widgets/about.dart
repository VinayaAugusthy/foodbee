import 'package:flutter/material.dart';
import 'package:foodbee/utils/colors.dart';
import 'package:foodbee/utils/constants.dart';
import 'package:foodbee/utils/text_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(
          size.width * 0.1,
        ),
        child: SizedBox(
          height: size.height,
          width: size.width * 0.85,
          child: Card(
            color: const Color.fromARGB(255, 235, 109, 100),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getVerticalSpace(20),
                    Center(
                      child: TextWidget(
                        text: 'About Us',
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: blackColor,
                      ),
                    ),
                    getVerticalSpace(30),
                    TextWidget(
                      text: 'Welcome to FoodBee',
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                    getVerticalSpace(20),
                    TextWidget(
                      text:
                          'FoodBee is a restauarnt app which help you to find the meal you want.',
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: blackColor,
                    ),
                    getVerticalSpace(20),
                    TextWidget(
                      text:
                          'We provide the best restaurant details in the city.',
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: blackColor,
                    ),
                    getVerticalSpace(20),
                    TextWidget(
                      text:
                          'Using FoodBee you can see the special dishes of each restaurant with details.',
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: blackColor,
                    ),
                    getVerticalSpace(20),
                    TextWidget(
                      text: 'We are happy to be a part of your food journey.',
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: blackColor,
                    ),
                    getVerticalSpace(20),
                    TextWidget(
                      text: 'Let us together explore new tastes...',
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: blackColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
