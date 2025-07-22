import 'package:flutter/material.dart';

class Containercontain extends StatelessWidget {
  const Containercontain({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.amber,
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(
            color: Colors.lightBlue,
            child: const Text("Hello world!!", style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
