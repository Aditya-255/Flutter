import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      //     width: 100,
      //     height: 50,
      //     color: Colors.amber,
      //     padding: EdgeInsets.all(20),
      //     //give paricular padding in
      //     //padding: EdgeInsets.only(left: 10, top: 5), //inside
      //     margin: EdgeInsets.all(20), //outside
      //     //red,black,green
      //     //for single container or child
      //     child: Container(width: 10, height: 10, color: Colors.blue),

      //     //for column wise
      //     // child: Column(
      //     //   children: [
      //     //     Container(width: 100, height: 100, color: Colors.blue),
      //     //     Container(width: 10, height: 10, color: Colors.black),
      //     //     Container(width: 10, height: 10, color: Colors.green),
      //     //   ],
      //     // ),
      //   ),
      //   // Row(
      //   //   children: [
      //   //     Container(color: Colors.black),
      //   //     Container(color: Colors.red),
      //   //   ],
      //   // ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 50, color: Colors.purple)),
            Text("user page"),
            Text("Password"),
            TextField(),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
