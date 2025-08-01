import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi_calc.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/nodes_app/screens/notes_screen.dart';
import 'package:flutter_application_1/splash_page.dart';
import 'create_card.dart';
// import 'cart_page.dart';

// import 'dashboard.dart';
// import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

// design product card which contains image of product name of
// it actual price and current and current price
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BmiCalcScreen(),
      // LoginPage(),
    );
  }
}
// find out how store whatsaap message data store