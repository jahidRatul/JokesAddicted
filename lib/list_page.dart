import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage(this.category);
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
