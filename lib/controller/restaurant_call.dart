// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RestaurantModel extends ChangeNotifier {
  Map<String, dynamic> restaurantData = {};
  List<dynamic> menuItems = [];
  String selectedRestaurantKey = '';

  final String apiUrl = 'https://kezel.co/api/getAllDigitalMenu.php';

  // Fetch data from the API
  Future<void> fetchData(String restaurantKey) async {
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
      };

      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: {
          'key': 'restaurant',
          'value': restaurantKey,
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        restaurantData = data['page_title'] ?? {};
        menuItems = data['menu_items'] ?? [];
        selectedRestaurantKey = restaurantKey;
        notifyListeners();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      print('Error fetching data: $error');
    }
  }
}
