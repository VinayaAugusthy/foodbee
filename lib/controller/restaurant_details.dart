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
            price: 320.00,
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
            price: 500.00,
            imageUrl:
                'https://img.freepik.com/free-photo/freshly-cooked-gourmet-taco-rustic-plate-generated-by-ai_188544-33863.jpg?size=626&ext=jpg&ga=GA1.2.7138222.1696496360&semt=ais',
          ),
        ],
      ),
      Restaurant(
        id: '2',
        name: 'Sathar ',
        address: 'Edappalli, Kochi',
        description: 'A premium restauraunt',
        menuItems: [
          MenuItem(
            name: 'Alpham manthi',
            category: 'Arabic',
            price: 600.00,
            imageUrl:
                'https://cdn.citymapia.com/adoor/cafe-kafeel/65908/Portfolio.jpg?biz=9379',
          ),
          MenuItem(
            name: 'Chiken Kabab',
            category: 'Japanese',
            price: 210.00,
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT-ZL1-7hvuYOgG1EqgDUVp2DInUYdUN9utELkQJ6wLdvaD76sU9by1QrW1oevwAOclVU&usqp=CAU',
          ),
          MenuItem(
            name: 'Veg Biriyani',
            category: 'Veg',
            price: 150.00,
            imageUrl:
                'https://www.indianveggiedelight.com/wp-content/uploads/2020/04/veg-biryani-instant-pot.jpg',
          ),
          MenuItem(
            name: 'Mexican Mojito',
            category: 'Mexican',
            price: 100.00,
            imageUrl:
                'https://leitesculinaria.com/wp-content/uploads/2021/06/mexican-mojito.jpg',
          ),
          MenuItem(
            name: 'Mangolian Beef Curry',
            category: 'Mangolian',
            price: 410.00,
            imageUrl:
                'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/12/14/1/DVSP05H_mongolian-beef_s4x3.jpg.rend.hgtvcom.616.462.suffix/1614361440646.jpeg',
          )
        ],
      ),
      Restaurant(
        id: '3',
        name: 'Al-Saj ',
        address: 'Aluva, Kochi',
        description: 'Explore different tastes...',
        menuItems: [
          MenuItem(
              name: 'Chatti Choru',
              category: 'Indian',
              price: 250.00,
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1U3dH9RfmFR8H7KUsVy5TU2oh0cv9SdfhGQ&usqp=CAU'),
          MenuItem(
            name: 'Fish Moilee',
            category: 'Indian',
            price: 190.00,
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdyERvcQQ8pyfUnaGejCPQQ1wxt0ZCEk14Mg&usqp=CAU',
          ),
          MenuItem(
              name: 'Prawns Fry',
              category: 'Seafood',
              price: 300.00,
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuEJNqqTfiGrC9Fpt-12wwtd4fk0H9_BarbQ&usqp=CAU'),
          MenuItem(
            name: 'Thai Spring Roles',
            category: 'Thai',
            price: 120.00,
            imageUrl:
                'https://media.istockphoto.com/id/1273814789/photo/vegetarian-spring-rolls.jpg?s=612x612&w=0&k=20&c=cfGNodowbZr6l9C-cQvtaxn93z_AeYCZXLUAj45YFg0=',
          ),
          MenuItem(
            name: 'Fly Heads',
            category: 'Chinese',
            price: 210.00,
            imageUrl:
                'https://asianinspirations.com.au/wp-content/uploads/2020/09/20200925-6-Chinese-Classic-Dishes-with-Odd-Names-Awesome-Flavours_04-Fly-Heads.jpg',
          )
        ],
      ),
      Restaurant(
        id: '4',
        name: 'Adhis Cafe',
        address: 'Panambilli Nagar, Kochi',
        description: 'World of tastes',
        menuItems: [
          MenuItem(
            name: 'Squirrel Fish',
            category: 'Chinese',
            price: 350.00,
            imageUrl:
                'https://asianinspirations.com.au/wp-content/uploads/2020/09/20200925-6-Chinese-Classic-Dishes-with-Odd-Names-Awesome-Flavours_05-Squirrel-Fish.jpg',
          ),
          MenuItem(
            name: 'Sushi',
            category: 'Japanese',
            price: 210.00,
            imageUrl:
                'https://cdn.media.amplience.net/i/japancentre/Blog-page-156-sushi/Blog-page-156-sushi?&w=556&h=391&sm=c&fmt=auto',
          ),
          MenuItem(
            name: 'Boat Noodles',
            category: 'Thai',
            price: 250.00,
            imageUrl:
                'http://farm8.staticflickr.com/7156/6543939071_7fc5a8fbbc_z.jpg',
          ),
          MenuItem(
            name: 'Bang Bang Chicken',
            category: 'Japanese',
            price: 450.00,
            imageUrl:
                'https://omnivorescookbook.com/wp-content/uploads/2019/10/1910_Chinese-Bang-Bang-Chicken_550.jpg',
          ),
          MenuItem(
            name: 'Needle Mushroom',
            category: 'Thai',
            price: 210.00,
            imageUrl:
                'http://farm8.staticflickr.com/7015/6543940405_c7e85b764a_z.jpg',
          ),
        ],
      ),
      Restaurant(
        id: '5',
        name: 'Al-Reem',
        address: 'Palarivattam, Kochi',
        description: 'A house of unlimited tastes...',
        menuItems: [
          MenuItem(
            name: 'Chiken Mandi',
            category: 'Arabian',
            price: 550.00,
            imageUrl:
                'https://img.freepik.com/premium-photo/close-up-chicken-mandi-rice-dish-generative-ai_786587-4196.jpg',
          ),
          MenuItem(
            name: 'Chiken Satay',
            category: 'Thai',
            price: 330.00,
            imageUrl:
                'https://rasamalaysia.com/wp-content/uploads/2019/04/chicken-satay-thumb.jpg',
          ),
          MenuItem(
            name: 'Orange Chiken',
            category: 'Thai',
            price: 250.00,
            imageUrl:
                'https://www.kitchensanctuary.com/wp-content/uploads/2020/01/Orange-Chicken-square-1200.jpg',
          ),
          MenuItem(
            name: 'Takayoki',
            category: 'Japanese',
            price: 300.00,
            imageUrl:
                'https://www.finedininglovers.com/sites/g/files/xknfdk626/files/2022-09/takoyaki-recipe%C2%A9iStock.jpg',
          ),
          MenuItem(
            name: 'Baklava',
            category: 'Arabic',
            price: 510.00,
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/c/c7/Baklava%281%29.png',
          )
        ],
      ),
    ];
  }

  List<Restaurant> get restaurants => _restaurants;
}
