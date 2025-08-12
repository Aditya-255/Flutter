import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_nv/calc.dart';
import 'package:flutter_nv/stop_watch.dart';

class Expandedfab extends StatelessWidget {
  final _key = GlobalKey<ExpandableFabState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expandable FAB Example")),
      body: Center(child: Text("Home Page", style: TextStyle(fontSize: 22))),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: _key,
        distance: 70.0, // distance between buttons
        children: [
          FloatingActionButton.small(
            heroTag: null,
            child: Icon(Icons.calculate),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => calculator()),
              );
            },
          ),
          FloatingActionButton.small(
            heroTag: null,
            child: Icon(Icons.watch),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      StopWatchEx(name: "ABC", email: "abc@gmail.com"),
                ),
              );
            },
          ),
          FloatingActionButton.small(
            heroTag: null,
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Text(
          "You navigated here from Expandable FAB!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
