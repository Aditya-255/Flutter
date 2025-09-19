import 'package:flutter/material.dart';
import 'package:flutter_nv/API/home.dart';
import 'package:flutter_nv/Currency_conveter.dart';
import 'package:flutter_nv/ExpandedFAB.dart';
import 'package:flutter_nv/Login_page.dart';
// import 'package:flutter_nv/calc.dart';
// import 'package:flutter_nv/columnexp.dart';
// import 'package:flutter_nv/conexp.dart';

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
        body: Home(),
        // CurrencyConveter(),
        // Expandedfab(),
        // Containercontain(),
        // Colcontain(),
        // calculator(),
        // LoginScreen(),
      ),
    );
  }
}
