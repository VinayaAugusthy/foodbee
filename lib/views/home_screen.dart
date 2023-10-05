import 'package:flutter/material.dart';
import 'package:foodbee/controller/restaurant_details.dart';
import 'package:foodbee/utils/colors.dart';
import 'package:foodbee/views/menu_details.dart';
import 'package:foodbee/views/widgets/drawer.dart';
import 'package:foodbee/utils/text_widget.dart';
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
        title: TextWidget(
          text: 'Restaurants',
          size: 26,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        centerTitle: true,
      ),
      drawer: drawer(context),
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
              height: size.height * 0.25,
              child: ListTile(
                tileColor: const Color.fromARGB(255, 235, 109, 100),
                title: Padding(
                  padding: EdgeInsets.only(top: size.width * 0.08),
                  child: TextWidget(
                    text: restaurant.name,
                    size: 26,
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: restaurant.address,
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                    TextWidget(
                      text: restaurant.description,
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: whiteColor,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MenuDetails(
                        restaurant: restaurant,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
