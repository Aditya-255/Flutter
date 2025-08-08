import 'package:flutter/material.dart';
import 'package:flutter_application_1/Counter/counter_controller.dart';
import 'package:get/state_manager.dart';

class Counter extends StatelessWidget {
  CounterController counterController = CounterController();
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              'Count: ${counterController.count.toString()}',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterController.increment();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  counterController.decrement();
                },
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  counterController.reset();
                },
                child: Icon(Icons.refresh),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
