import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Quiz_app/Second_Question.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz App Start')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Quiz App!', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(QuestionScreen());
              },
              child: Text('Start ', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
