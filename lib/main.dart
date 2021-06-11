import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

import '../screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //...

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.purpleAccent,
        fontFamily: 'PlayfairDisplay',
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProducDetailScreen.routName: (ctx) => ProductsOverviewScreen(),
      },
    );
  }
}
