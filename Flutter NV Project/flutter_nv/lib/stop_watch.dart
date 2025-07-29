import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchEx extends StatefulWidget {
  const StopWatchEx({super.key});

  @override
  State<StopWatchEx> createState() => _StopWatchExState();
}

class _StopWatchExState extends State<StopWatchEx> {
  double second = 0;
  late Timer timer;
  bool isTinking = false;
  int milli = 0;

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
                onPressed: () {
                  isTinking ? null : starttimer();
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Text("Start"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  isTinking ? stopTimer() : null;
                },
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
  void starttimer() {
    timer = Timer.periodic(const Duration(milliseconds: 1), onclick);
    setState(() {
      isTinking = true;
      milli = 0;
    });
  }

  void stopTimer() {
    timer.cancel();
    second = 0;
    setState(() {
      isTinking = false;
    });
  }

  void initState() {
    super.initState();
  }

  void onclick(Timer timer) {
    if (mounted) {
      setState(() {
        milli += 10;
        second = milli / 1000;
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }
}
