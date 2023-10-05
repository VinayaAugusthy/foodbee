import 'package:flutter/foundation.dart';
import 'package:foodbee/models/menu_model.dart';
import 'package:foodbee/models/restaurant_model.dart';

class RestaurantList with ChangeNotifier {
  List<Restaurant> _restaurants = [];

  RestaurantList() {
    _restaurants = [
      Restaurant(
        id: '1',
        name: 'Qwalli ',
        address: 'Aluva Kochi',
        description: 'A budget friendly restaurant',
        menuItems: [
          MenuItem(
            name: 'Chicken Biriyani',
            category: 'Indian',
            price: 150.00,
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65s4FVJPcAOmmITjN62U7fhbtkcBnwz6mcA&usqp=CAU',
          ),
          MenuItem(
            name: 'Alpham',
            category: 'Arabian',
            price: 600.00,
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTChLxCmLcO8zXpSqkSSRwarHhOQW2ggWpwsQ&usqp=CAU',
          ),
          MenuItem(
            name: 'Chiken Noodles',
            category: 'Chinese',
            price: 210.00,
            imageUrl:
                'https://www.hileymazdaofburleson.com/blogs/3654/wp-content/uploads/2021/02/4_Great_Chinese_Restaurants_in_and_Around_Burleson_637472652236699482.png',
          ),
          MenuItem(
            name: 'Thai Noodles',
            category: 'Thai',
            price: 210.00,
            imageUrl:
                'https://img.freepik.com/free-photo/thai-food-noodles-spicy-boil-with-seafood-pork-hot-pot_1150-27874.jpg?w=740&t=st=1696496464~exp=1696497064~hmac=f7c5e47414180129d176e3e039fd791d57585701d1dd60c9d056e52b82fb4a01',
          ),
          MenuItem(
            name: 'Meat Plate',
            category: 'Continental',
            price: 210.00,
            imageUrl:
                'https://img.freepik.com/free-photo/freshly-cooked-gourmet-taco-rustic-plate-generated-by-ai_188544-33863.jpg?size=626&ext=jpg&ga=GA1.2.7138222.1696496360&semt=ais',
          ),
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
              category: 'Japanese',
              price: 150.00,
              imageUrl:
                  'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public'),
          MenuItem(
            name: 'Item 1.2',
            category: 'Burger',
            price: 210.00,
            imageUrl:
                'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
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
            category: 'Veg meals',
            price: 150.00,
            imageUrl:
                'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          ),
          MenuItem(
            name: 'Item 1.2',
            category: 'Thai',
            price: 210.00,
            imageUrl:
                'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
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
            category: 'Arabian',
            price: 150.00,
            imageUrl:
                'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          ),
          MenuItem(
              name: 'Item 1.2',
              category: 'Indian',
              price: 210.00,
              imageUrl:
                  'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public'),
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
            category: 'Italian',
            price: 550.00,
            imageUrl:
                'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          ),
          MenuItem(
            name: 'Item 5.2',
            category: 'Spanish',
            price: 510.00,
            imageUrl:
                'https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/15f7f82d-3521-491e-6ed1-5c90734db800/public',
          )
        ],
      ),
    ];
  }

  List<Restaurant> get restaurants => _restaurants;
}
