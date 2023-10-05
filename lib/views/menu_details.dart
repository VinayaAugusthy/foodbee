import 'package:flutter/material.dart';
import 'package:foodbee/models/restaurant_model.dart';
import 'package:foodbee/utils/colors.dart';

class MenuDetails extends StatelessWidget {
  final Restaurant restaurant;
  const MenuDetails({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          restaurant.name,
          style: TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.01,
            right: size.width * 0.01,
            top: size.width * 0.03,
          ),
          child: SizedBox(
            height: size.height * 0.6,
            child: Column(
              children: restaurant.menuItems
                  .map(
                    (item) => Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.01,
                        right: size.width * 0.01,
                        top: size.width * 0.03,
                      ),
                      child: Container(
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
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90)),
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
                                      bottom: 20,
                                      left: 30,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                204, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
