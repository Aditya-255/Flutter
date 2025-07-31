import 'package:flutter/material.dart';

class Gradient_view extends StatelessWidget {
  const Gradient_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [Color(0xffcfd9df), Color(0xffe2ebf0)],
      //       begin: FractionalOffset(1.0, 0.0),
      //       end: FractionalOffset(0.0, 1.0),
      //     ),
      //   ),
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container(height: 50, width: 100, color: Colors.black),
      //         Container(height: 50, width: 100, color: Colors.amber),
      //         Container(height: 50, width: 100, color: Colors.red),
      //         Container(height: 50, width: 100, color: Colors.blue),
      //       ],
      //     ),
      //   ),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xffcfd9df), Color(0xffe2ebf0)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 100, color: Colors.black),
              Container(height: 50, width: 100, color: Colors.amber),
              Container(height: 50, width: 100, color: Colors.red),
              Container(height: 50, width: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
