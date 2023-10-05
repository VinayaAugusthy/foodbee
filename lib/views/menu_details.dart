import 'package:flutter/material.dart';
import 'package:foodbee/models/restaurant_model.dart';
import 'package:foodbee/utils/colors.dart';
import 'package:foodbee/views/widgets/menu_card.dart';

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
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.01,
          right: size.width * 0.01,
          top: size.width * 0.03,
        ),
        child: SizedBox(
          child: ListView(
            children: [
              Column(
                children: restaurant.menuItems
                    .map(
                      (item) => Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.01,
                          right: size.width * 0.01,
                          // top: size.width * 0.03,
                        ),
                        child: MenuCard(size: size,item: item,),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

