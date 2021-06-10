import 'package:flutter/material.dart';

class ProducDetailScreen extends StatelessWidget {
  final String title;

  ProducDetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
