import 'package:flutter/material.dart';

class Callapi extends StatefulWidget {
  const Callapi({super.key});

  @override
  State<Callapi> createState() => _CallapiState();
}

class _CallapiState extends State<Callapi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dog API')),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            ListTile(title: Text("element $index")),
      ),
    );
  }
}
