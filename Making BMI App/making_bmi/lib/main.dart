// import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BMI(),
    );
    ;
  }
}

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var wtController = TextEditingController();
  var inController = TextEditingController();
  var ftController = TextEditingController();

  var result = "";
  var textcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
        backgroundColor: Colors.black,
        foregroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Center(
          child: Container(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Body Mass Index",
                  style: TextStyle(fontSize: 34, color: Colors.grey),
                ),
                SizedBox(height: 10),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text(
                      "Enter your weight ",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    prefix: Icon(Icons.line_weight, color: Colors.white),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 15),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text(
                      "Enter your Height(in feet) ",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    prefix: Icon(Icons.height, color: Colors.white),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 15),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text(
                      "Enter your Height(in inch) ",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    prefix: Icon(Icons.height, color: Colors.white),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();
                    if (wt != "" && ft != "" && inch != "") {
                      var iwt = int.parse(wt);
                      int ift = int.parse(ft);
                      int iinch = int.parse(inch);

                      var totalinch = (ift * 12) + iinch;
                      var totalCm = totalinch * 2.54;
                      var totalM = totalCm / 100;

                      var bmi = iwt / (totalM * totalM);

                      var msg = "";
                      if (bmi > 25) {
                        msg = "You are Overweight";
                        textcolor = Colors.orange;
                      } else if (bmi < 18) {
                        msg = "You are Underweight";
                        textcolor = Colors.red;
                      } else {
                        msg = "You are Healthy";
                        textcolor = Colors.green.shade200;
                      }

                      setState(() {
                        result =
                            "$msg \n Your BMI is ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please enter all the fields";
                      });
                    }
                  },
                  child: Text("Calculate", style: TextStyle(fontSize: 15)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                  ),
                ),
                SizedBox(height: 7),
                Text(result, style: TextStyle(fontSize: 15, color: textcolor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
