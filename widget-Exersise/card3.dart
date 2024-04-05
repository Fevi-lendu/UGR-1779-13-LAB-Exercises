import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<String> cartItems = [
    Image.assets('assets/img1.jpg'),
    Image.assets('assets/img2.jpg'),
  ];

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: CartItemList(cartItems: cartItems, removeItem: removeItem),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            cartItems.add('New Item');
          });
        },
      ),
    );
  }
}

class CartItemList extends StatelessWidget {
  final List<String> cartItems;
  final void Function(int index) removeItem;

  CartItemList({required this.cartItems, required this.removeItem});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return CartItem(
          item: cartItems[index],
          removeItem: () => removeItem(index),
        );
      },
    );
  }
}

class CartItem extends StatelessWidget {
  final String item;
  final VoidCallback removeItem;

  CartItem({required this.item, required this.removeItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle),
        onPressed: removeItem,
      ),
    );
  }
}
