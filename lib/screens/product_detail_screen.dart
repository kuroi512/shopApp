import 'package:flutter/material.dart';

class ProducDetailScreen extends StatelessWidget {
  // final String title;

  // ProducDetailScreen(this.title);
  static const routName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
