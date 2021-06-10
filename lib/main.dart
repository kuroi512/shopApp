import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

import '../screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //...

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // ignore: deprecated_member_use
        accentColor: Colors.purpleAccent,
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProducDetailScreen.routName: (ctx) => ProductsOverviewScreen(),
      },
    );
  }
}
