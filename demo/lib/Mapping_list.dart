import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  var arrData = [
    {"name": "Item 1", "value": "Value 1"},
    {"name": "Item 2", "value": "Value 2"},
    {"name": "Item 3", "value": "Value 3"},
    {"name": "Item 4", "value": "Value 4"},
    {"name": "Item 5", "value": "Value 5"},
    {"name": "Item 6", "value": "Value 6"},
    {"name": "Item 7", "value": "Value 7"},
    {"name": "Item 8", "value": "Value 8"},
    {"name": "Item 9", "value": "Value 9"},
    {"name": "Item 10", "value": "Value 10"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mapping list")),
      body: Container(
        child: ListView(
          children: arrData.map((value) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['value'].toString()),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }).toList(),
        ),
      ),
    );
  }
}
