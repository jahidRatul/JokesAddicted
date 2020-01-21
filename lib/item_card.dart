import 'package:flutter/material.dart';
import 'package:jokes_addicted/joke_list.dart';
import 'list_page.dart';

class ItemCard extends StatelessWidget {
  ItemCard({@required this.colour, @required this.category});
  final Color colour;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
//              MaterialPageRoute(builder: (context) => ListPage(category)));
              MaterialPageRoute(builder: (context) => JokeList()));
        },
        child: Container(
          child: Center(
            child: Text(
              category,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
