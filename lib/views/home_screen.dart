import 'package:flutter/material.dart';
import 'package:foodbee/controller/restaurant_details.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurantList = Provider.of<RestaurantList>(context);
    final restaurants = restaurantList.restaurants; 
    return  Scaffold();
  }
}