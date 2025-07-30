import 'package:flutter/material.dart';

class ListWheelScrollview extends StatefulWidget {
  const ListWheelScrollview({super.key});

  @override
  State<ListWheelScrollview> createState() => _ListWheelScrollviewState();
}

class _ListWheelScrollviewState extends State<ListWheelScrollview> {
  var arrindex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Wheel Scroll View")),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrindex
            .map(
              (value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "$value",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
