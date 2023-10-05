import 'package:flutter/material.dart';
import 'package:foodbee/controller/restaurant_details.dart';
import 'package:foodbee/utils/colors.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurantList = Provider.of<RestaurantList>(context);
    final restaurants = restaurantList.restaurants;
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Restaurants',
          style: TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.01,
                right: size.width * 0.01,
                top: size.width * 0.03),
            child: SizedBox(
              // color: Color.fromARGB(255, 222, 71, 71),
              height: size.height * 0.25,
              child: ListTile(
                tileColor: const Color.fromARGB(255, 211, 138, 133),
                title: Padding(
                  padding: EdgeInsets.only(top: size.width * 0.08),
                  child: Text(
                    restaurant.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                      fontSize: 26,
                    ),
                  ),
                ),
                subtitle: Text(
                  restaurant.address,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: whiteColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
