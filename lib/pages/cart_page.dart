import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakertute/components/cart_item.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Cart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 25),
                Expanded(
                  child: ListView.builder(
                      itemCount: value.getCart().length,
                      itemBuilder: (context, index) {
                        Shoe individualShoe = value.getCart()[index];

                        return CartItem(shoe: individualShoe);
                      }),
                )
              ],
            )));
  }
}
