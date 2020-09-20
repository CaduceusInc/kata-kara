import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'Boogie red outfit!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/01/13/00/41/red-1136968_960_720.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://images.unsplash.com/photo-1475178626620-a4d074967452?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 'p3',
      title: 'Scarves',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/08/20/14/02/colorful-scarves-2661828_960_720.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Cooking pots',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1541508168132-0b1d81249c25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
    ),
  ];

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  List<Product> get items {
    return [..._items]; // ... operator concatenates _items to the empty list
  }

  void addProducts() {

    notifyListeners();
  }
}