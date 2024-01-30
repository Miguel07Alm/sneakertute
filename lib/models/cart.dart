import 'package:flutter/material.dart';
import 'package:sneakertute/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Adidas Terrex',
        price: '150',
        imagePath: 'lib/images/ADIDAS-TERREX.jpg',
        description: 'Elevate your style while running'),
    Shoe(
        name: 'Air Jordan',
        price: '240',
        imagePath: 'lib/images/AIR-JORDAN.jpg',
        description: 'Feel like a pro'),
    Shoe(
        name: 'Nike Air Max',
        price: '200',
        imagePath: 'lib/images/NIKE-AIR-MAX.jpg',
        description: 'The shoe for all occasions'),
    Shoe(
        name: 'Nike Waffle',
        price: '68',
        imagePath: 'lib/images/NIKE-WAFFLE.jpg',
        description: 'Take it easy with this shoe'),
  ];
  // list of items in user cart
  List<Shoe> cartItems = [];
  // get list of shoes for sale
  List<Shoe> getShoeShop() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart() {
    return cartItems;
  }

  // add items to cart
  void addToCart(Shoe shoe) {
    cartItems.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Shoe shoe) {
    cartItems.remove(shoe);
    notifyListeners();
  }
}
