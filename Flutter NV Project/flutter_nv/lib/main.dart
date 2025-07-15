import 'package:flutter/material.dart';
import 'package:flutter_nv/flutterexp/clac.dart';
import 'package:flutter_nv/flutterexp/columnexp.dart';
import 'package:flutter_nv/flutterexp/conexp.dart';

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
      ),
    );
  }
}
