import 'package:flutter/material.dart';
import 'package:foodbee/models/menu_model.dart';
import 'package:foodbee/utils/colors.dart';
import 'package:foodbee/views/widgets/text_widget.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.size,
    required this.item,
  });

  final Size size;
  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: -15,
              blurRadius: 15,
            )
          ]),
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.01),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(item.imageUrl),
                  fit: BoxFit.fill,
                ),
                color: const Color.fromARGB(255, 5, 4, 2),
                borderRadius: BorderRadius.circular(20)),
            width: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                    bottom: size.width * 0.03,
                    left: size.width * 0.06,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(204, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(size.width * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: item.name,
                              size: 20,
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                            ),
                            TextWidget(
                              text: 'Rs. ${item.price.toString()}',
                              size: 20,
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                            ),
                            TextWidget(
                              text: item.category,
                              size: 20,
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
