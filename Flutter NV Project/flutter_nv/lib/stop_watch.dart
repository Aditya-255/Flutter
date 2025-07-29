import 'dart:async';
// import 'dart:ffi';

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
  final laps = <int>[];
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
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
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
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.green.shade300,
                  ),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Text("Stop"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Lapclick();
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.grey),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Text("Laps"),
              ),
            ],
          ),
          Expanded(child: builderDisplay()),
        ],
      ),
    );
  }

  @override
  void starttimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), onclick);
    setState(() {
      isTinking = true;
      milli = 0;
    });
  }

  void Lapclick() {
    if (isTinking) {
      setState(() {
        laps.add(milli);
        milli = 0;
      });
    }
    print(laps);
  }

  void stopTimer() {
    timer.cancel();
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
        milli += 100;
        second = milli / 1000;
      });
    }
  }

  Widget buildDisplay() {
    return ListView(
      children: [
        for (int i in laps)
          ListTile(
            title: Text("Lap ${laps.indexOf(i) + 1}:${i / 1000} seconds"),
          ),
      ],
    );
  }

  Widget builderDisplay() {
    return ListView.builder(
      itemBuilder: (context, Index) {
        return ListTile(
          title: Text(
            "Lap ${laps.indexOf(laps[Index]) + 1}:${laps[Index] / 1000} seconds",
          ),
        );
      },
      itemCount: laps.length,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }
}
