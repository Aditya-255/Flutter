import 'package:flutter/material.dart';
import 'package:flutter_nv/calc.dart';
// import 'package:flutter_nv/columnexp.dart';
// import 'package:flutter_nv/conexp.dart';
// import 'package:flutter_nv/stop_watch.dart';

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
      home: Scaffold(
        body:
            // Containercontain()
            // Colcontain(),
            calculator(),
        // StopWatchEx(),
      ),
    );
  }
}
