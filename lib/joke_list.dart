import 'package:flutter/material.dart';

class JokeList extends StatefulWidget {
  @override
  _JokeListState createState() => _JokeListState();
}

class _JokeListState extends State<JokeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("category"),
        centerTitle: true,
      ),
      body: getJokeListView(),
    );
  }

  ListView getJokeListView() {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              position.toString(),
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        );
      },
    );
  }
}
