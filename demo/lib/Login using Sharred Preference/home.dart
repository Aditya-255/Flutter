import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Home"))),
      body: Container(
        color: Colors.blue[100],
        child: Center(child: Icon(Icons.home, size: 100, color: Colors.blue)),
      ),
    );
  }
}
