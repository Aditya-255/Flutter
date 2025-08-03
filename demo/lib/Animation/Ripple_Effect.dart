// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class RippleEffect extends StatefulWidget {
  const RippleEffect({super.key});

  @override
  State<RippleEffect> createState() => _RippleEffectState();
}

class _RippleEffectState extends State<RippleEffect>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  var list = [150.0, 200.0, 250.0, 300.0, 350.0];
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    // animation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ripple effect")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ABC(list[0]),
            ABC(list[1]),
            Icon(Icons.add_circle_outline, size: 50, color: Colors.white),
            ABC(list[2]),
            ABC(list[3]),
            ABC(list[4]),
          ],

          // list
          //     .map(
          //       (radius) => ABC(radius),
          //     )
          //     .toList(),
        ),
      ),
    );
  }

  Container ABC(double radius) {
    return Container(
      width: radius * animationController.value,
      height: radius * animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - animationController.value),
      ),
    );
  }
}
