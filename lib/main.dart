import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';

import '../screens/product_detail_screen.dart';
import '../screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //...

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext ctx) => Products(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.purpleAccent,
          fontFamily: 'PlayfairDisplay',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProducDetailScreen.routName: (ctx) => ProductsOverviewScreen(),
        },
      ),
    );
  }
}
