import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clippers")),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(500)),
          child: Image.asset(
            "assets/images/1.jpg",
            height: 100, 
            width: 100,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
