import 'package:flutter/material.dart';
import 'package:flutter_application_1/Counter/counter_controller.dart';
import 'package:flutter_application_1/Counter/setting_screen.dart';
import 'package:get/get.dart';

// import 'package:get/state_manager.dart';
//create Quiz app with following screen 
//1.start with instruction and strart button
// 2.quiz screen diplay que and 4 options else button also on top display score and bottom next complete
//3.to display quiz score with details
class Counter extends StatelessWidget {
  CounterController controller = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        actions: [
          IconButton(
            onPressed: () {
              Get.off(SettingsScreen());
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Total Clicks", style: TextStyle(fontSize: 50)),
          Obx(
            () => Text(
              controller.count.value.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.increment();
                },
                child: Icon(Icons.add, size: 30),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.decrement();
                },
                child: Icon(Icons.remove, size: 30),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.reset();
                },
                child: Icon(Icons.undo, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
