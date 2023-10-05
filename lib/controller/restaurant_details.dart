
import 'package:flutter/foundation.dart';
import 'package:foodbee/models/menu_model.dart';
import 'package:foodbee/models/restaurant_model.dart';

class RestaurantList with ChangeNotifier {
  List<Restaurant> _restaurants = [];

  RestaurantList() {
    // Initialize 5 restaurant objects
    _restaurants = [
      Restaurant(
        id: '1',
        name: 'Restaurant 1',
        address: 'Address 1',
        description: 'Description 1',
        menuItems: [
          MenuItem(
              name: 'Item 1.1',
              price: 150.00,
              imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public'),
          MenuItem(
              name: 'Item 1.2',
              price: 210.00,
              imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public'),
        ],
      ),
      Restaurant(
        id: '2',
        name: 'Restaurant 2',
        address: 'Address 2',
        description: 'Description 2',
        menuItems: [
          MenuItem(
              name: 'Item 1.1',
              price: 150.00,
              imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public'),
          MenuItem(
            name: 'Item 1.2',
            price: 210.00,
            imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          )
        ],
      ),
      Restaurant(
        id: '3',
        name: 'Restaurant 3',
        address: 'Address 3',
        description: 'Description 3',
        menuItems: [
          MenuItem(
            name: 'Item 1.1',
            price: 150.00,
            imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          ),
          MenuItem(
            name: 'Item 1.2',
            price: 210.00,
            imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          )
        ],
      ),
      Restaurant(
        id: '4',
        name: 'Restaurant 4',
        address: 'Address 4',
        description: 'Description 4',
        menuItems: [
          MenuItem(
            name: 'Item 1.1',
            price: 150.00,
            imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          ),
          MenuItem(
              name: 'Item 1.2',
              price: 210.00,
              imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public'),
        ],
      ),
      Restaurant(
        id: '5',
        name: 'Restaurant 5',
        address: 'Address 5',
        description: 'Description 5',
        menuItems: [
          MenuItem(
            name: 'Item 5.1',
            price: 550.00,
            imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          ),
          MenuItem(
            name: 'Item 5.2',
            price: 510.00,
            imageUrl: 'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          )
        ],
      ),
    ];
  }

  List<Restaurant> get restaurants => _restaurants;
}
