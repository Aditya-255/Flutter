import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  var count = 0;
  var no1contoller = TextEditingController();
  var no2contoller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sataeful Widget")),
      body:
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text("Count: $count"),
          //       ElevatedButton(
          //         onPressed: () {
          //           setState(() {
          //             count++;
          //           });
          //         },
          //         child: Text("Increment"),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            color: Colors.grey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no1contoller,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no2contoller,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1contoller.text.toString());
                              var no2 = int.parse(no2contoller.text.toString());
                              var sum = no1 + no2;
                              result = "the sum of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text("add"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1contoller.text.toString());
                              var no2 = int.parse(no2contoller.text.toString());
                              var sub = no1 - no2;
                              result =
                                  "the difference between $no1 and $no2 is $sub";
                              setState(() {});
                            },
                            child: Text("sub"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1contoller.text.toString());
                              var no2 = int.parse(no2contoller.text.toString());
                              var mul = no1 * no2;
                              result = "the product of $no1 and $no2 is $mul";
                              setState(() {});
                            },
                            child: Text("mul"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1contoller.text.toString());
                              var no2 = int.parse(no2contoller.text.toString());
                              var div = no1 / no2;
                              result = "the division of $no1 and $no2 is $div";
                              setState(() {});
                            },
                            child: Text("div"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        result,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
