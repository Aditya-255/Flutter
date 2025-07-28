import 'package:flutter/material.dart';

class Rangeslider extends StatefulWidget {
  const Rangeslider({super.key});

  @override
  State<Rangeslider> createState() => _RangesliderState();
}

class _RangesliderState extends State<Rangeslider> {
  RangeValues values = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Range Slider Example")),
      body: Center(
        child: RangeSlider(
          values: values,
          min: 0,
          max: 100,
          labels: labels,
          divisions: 10,
          activeColor: Colors.green,
          inactiveColor: Colors.grey,
          onChanged: (newValues) {
            values = newValues;
            print("Start: ${newValues.start}, End: ${newValues.end}");
            setState(() {});
          },
        ),
      ),
    );
  }
}
