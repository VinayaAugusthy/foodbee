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
                  .map((item) => Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.01,
                          right: size.width * 0.01,
                          top: size.width * 0.03,
                        ),
                        child: Container(
                          height: size.height * 0.25,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.01,
                              right: size.width * 0.01,
                              // top: size.width * 0.03,
                            ),
                            child: ListTile(
                              tileColor:
                                  const Color.fromARGB(255, 209, 145, 140),
                              title: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.01,
                                  right: size.width * 0.01,
                                  top: size.width * 0.03,
                                ),
                                child: Text(item.name),
                              ),
                              subtitle: Text(
                                  'Price: \$${item.price.toStringAsFixed(2)}'),
                              // trailing: Container(
                              //   width: size.width * 0.4,
                              //   height: size.height * 0.6,
                              //   decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //       fit: BoxFit.cover,
                              //       image: NetworkImage(
                              //         item.imageUrl,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // trailing: CircleAvatar(
                              //   backgroundImage: NetworkImage(item.imageUrl),
                              //   radius: 40,
                              //   backgroundColor: Colors.grey,
                              // ),
                              trailing: Container(
                                  height: size.height * 0.25,
                                  child: Image.network(item.imageUrl)),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
