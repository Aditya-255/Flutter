import 'package:flutter/material.dart';

class calculator extends StatelessWidget {
  const calculator({super.key});
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
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("A")),
                ),
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("A")),
                ),
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("A")),
                ),
                Expanded(
                  child: ElevatedButton(onPressed: null, child: Text("A")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
