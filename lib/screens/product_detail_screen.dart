import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

// ignore: use_key_in_widget_constructors
class ProducDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProducDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              width: double.infinity,
              child: Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10),
            Text(
              '\$${loadedProduct.price}',
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20),
            Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                loadedProduct.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
