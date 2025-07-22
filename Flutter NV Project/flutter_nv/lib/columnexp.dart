import 'package:flutter/material.dart';

class Colcontain extends StatelessWidget {
  const Colcontain({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("hello world", style: TextStyle(color: Colors.red)),
            SizedBox(height: 20),
            Text(
              "welocome to column exp",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
