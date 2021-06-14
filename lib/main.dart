import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import './screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.purpleAccent,
            fontFamily: 'Vollkorn',
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProducDetailScreen.routName: (ctx) => ProducDetailScreen(),
          }),
    );
  }
}
