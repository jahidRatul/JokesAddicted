import 'package:flutter/material.dart';
import 'item_card.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jokes Addicted'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'Gopal Var',
                  ),
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'Mr. & Mrs.',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'Student-Teacher',
                  ),
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'Dr. & Patient',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'Drunk',
                  ),
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'Nasiruddin Hojja',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'Mad Friend',
                  ),
                  ItemCard(
                    colour: Color(0xFF1E1D33),
                    category: 'I am too Old',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
