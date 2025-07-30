import 'package:flutter/material.dart';

class AnimationCon extends StatefulWidget {
  @override
  State<AnimationCon> createState() => _AnimationConState();
}

class _AnimationConState extends State<AnimationCon> {
  var _width = 200.0;
  var _height = 100.0;
  Decoration _decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.blue,
  );
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation Container")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: _decoration,
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _height = 200.0;
                    flag = false;
                    Curve:
                    Curves.fastOutSlowIn;
                    _decoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    );
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    flag = true;
                    _decoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    );
                  }
                });
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimationOpacity extends StatefulWidget {
  const AnimationOpacity({super.key});

  @override
  State<AnimationOpacity> createState() => _AnimationOpacityState();
}

class _AnimationOpacityState extends State<AnimationOpacity> {
  var _opacity = 1.0;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: _opacity,
              curve: Curves.bounceIn,
              child: Container(width: 200, height: 200, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _opacity = 0.0;
                    flag = false;
                  } else {
                    _opacity = 1.0;
                    flag = true;
                  }
                });
              },
              child: Text("Animate Opacity"),
            ),
          ],
        ),
      ),
    );
  }
}
