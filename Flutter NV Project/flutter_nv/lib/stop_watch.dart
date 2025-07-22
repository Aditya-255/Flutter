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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StopWatch")),
      body: Center(
        child: Text(
          "$second Seconds",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
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
