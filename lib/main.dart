import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() => runApp(JokesAddicted());

class JokesAddicted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
