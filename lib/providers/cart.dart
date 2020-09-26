import 'package:flutter/foundation.dart';

class CartItem {
  final id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(String id, productId, double price, String title) {
    if (items.containsKey(
      productId,
    )) {
      _items.update(
          productId,
          (existinCartItem) => CartItem(
                id: existinCartItem.id,
                title: existinCartItem.title,
                price: existinCartItem.price,
                quantity: existinCartItem.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now(),
          title: title,
          quantity: 1,
          price: price,
        ),
      );
    }
  }
}
