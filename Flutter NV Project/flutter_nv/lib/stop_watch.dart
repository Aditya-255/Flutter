import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchEx extends StatefulWidget {
  const StopWatchEx({super.key});

  @override
  State<StopWatchEx> createState() => _StopWatchExState();
}

class _StopWatchExState extends State<StopWatchEx> {
  int second = 0;
  late Timer timer;
  String _secondtext() => second <= 1 ? "Second" : "Seconds";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StopWatch")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "${second} ${_secondtext()}",
              style: TextStyle(fontSize: 50, color: Colors.blueAccent),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Text("Start"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Text("Stop"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), onclick);
  }

  void onclick(Timer timer) {
    if (mounted) {
      setState(() {
        second++;
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }
}
