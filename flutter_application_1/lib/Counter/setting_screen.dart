import 'package:flutter/material.dart';
import 'package:flutter_application_1/Counter/counter_controller.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  CounterController counterControllerlimit = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          TextField(
            onChanged: (value) {
              counterControllerlimit.count.value = int.parse(value);
            },
            decoration: InputDecoration(
              labelText: "Set Limit",
              hintText: "Enter a limit for the counter",
            ),
          ),
        ],
      ),
    );
  }
}
