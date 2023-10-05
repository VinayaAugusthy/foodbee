class MenuItem {
  final String name;
  final String category;
  final double price;
  final String imageUrl;

  MenuItem({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });

  // Factory constructor to create a MenuItem object from JSON data
  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      category: json['category'],
    );
  }
}



// restaurant_details_page.dart





