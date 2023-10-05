  import 'package:flutter/material.dart';
import 'package:foodbee/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

Drawer drawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: primaryColor),
            child: Center(
              child: Text(
                'FoodBee',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: whiteColor,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Contact Us'),
            onTap: () => redirect(),
          )
        ],
      ),
    );
  }

  redirect() async {
    final Uri urls = Uri.parse('https://mymenu.kezel.co/?r=LeisureInnVKL');
    if (!await launchUrl(urls)) {
      throw Exception('failed');
    }
  }
