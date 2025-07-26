import 'package:demo/stateful_widget.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Intro Page")),
      body: Column(
        children: [
          Text(
            "This is the intro page of the app. Here you can find information about how to use the app and its features.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Stateful()),
              );
            },
            child: Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
