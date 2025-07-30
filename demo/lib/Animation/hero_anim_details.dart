import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation Details")),
      body: Container(
        child: Hero(
          tag: "background",
          child: Image.asset("assets/images/1.jpg"),
        ),
      ),
    );
  }
}
