import 'package:flutter/material.dart';
import 'package:foodbee/models/menu_model.dart';

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
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rs. ${item.price.toString()}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item.category,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
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
