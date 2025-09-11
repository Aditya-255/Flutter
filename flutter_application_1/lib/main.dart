import 'package:flutter/material.dart';
import 'package:flutter_application_1/Counter/counter_Screen.dart';
import 'package:flutter_application_1/Counter/setting_screen.dart';
import 'package:flutter_application_1/Dog%20APIS/callapi.dart';
import 'package:flutter_application_1/Quiz_app/Start.dart';
import 'package:flutter_application_1/Quiz_app/homepage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:flutter_application_1/bmi_calc.dart';
// import 'package:flutter_application_1/login_page.dart';
// import 'package:flutter_application_1/nodes_app/screens/notes_screen.dart';
// import 'package:flutter_application_1/splash_page.dart';
// import 'create_card.dart';
// import 'cart_page.dart';

// import 'dashboard.dart';
// import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 61, 53, 74),
        ),
      ),
      home: QuizScreen(),
      // Callapi(),
      // Start(),
      // SettingsScreen(),
      // Counter(),
      // BmiCalcScreen(),
      // LoginPage(),
    );
  }
}
// find out how store whatsaap message data store