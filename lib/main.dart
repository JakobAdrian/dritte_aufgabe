import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyProduct(),
    );
  }
}

class Product {
  String name;
  int price;
  
  Product({required this.name, required this.price});
}

class MyProduct extends StatelessWidget {
  const MyProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = <Product>[
      Product(name: 'Product 1', price: 10),
      Product(name: 'Product 2', price: 20),
      Product(name: 'Product 3', price: 30),
      Product(name: 'Product 4', price: 40),
      Product(name: 'Product 5', price: 50),
      Product(name: "Product 6", price: 60),
      Product(name: 'Product 7', price: 70),
      Product(name: 'Product 8', price: 80),
      Product(name: 'Product 9', price: 90),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text(products[index].name),
            trailing: Text('\$${products[index].price}'), 

          );
        },
      ),
    );
  }
}
