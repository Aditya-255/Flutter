import 'package:flutter/material.dart';

import 'cart_page.dart';

class instacard extends StatelessWidget {
  const instacard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        child: Column(
          children: [
            Row(
              children: [
                Container(height: 50, width: 50, color: Colors.lightBlue),
                Text("  Chennaiipl", style: TextStyle(fontSize: 20)),
              ],
            ),
            Container(height: 300, color: Colors.black),
            Row(children: [Icon(Icons.library_add)]),
          ],
        ),
      ),
    );
  }
}
