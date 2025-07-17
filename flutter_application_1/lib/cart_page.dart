import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [card(), card(), card()]));
  }

  Card card() {
    return Card(
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Container(color: Colors.lightBlueAccent, height: 80, width: 80),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Product name"), Text("Descripotion")],
              ),
            ),
            Text("500", style: TextStyle(fontSize: 40)),
          ],
        ),
      ),
    );
  }
}
