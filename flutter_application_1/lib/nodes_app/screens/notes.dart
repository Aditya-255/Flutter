import 'dart:math';

import 'package:flutter/material.dart';

class Notescreen extends StatefulWidget {
  const Notescreen({super.key});

  @override
  State<Notescreen> createState() => _NotescreenState();
}

class _NotescreenState extends State<Notescreen> {
  TextEditingController editingController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: editingController,
            decoration: InputDecoration(
              hintText: "enter title",
              labelText: 'Search Notes',

              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
