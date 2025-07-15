import 'package:flutter/material.dart';

class Containercontain extends StatelessWidget {
  const Containercontain({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(child: Container(color: Colors.amber)),
    );
  }
}
