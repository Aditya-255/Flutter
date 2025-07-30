import 'dart:async';

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

class CrossFade extends StatefulWidget {
  const CrossFade({super.key});

  @override
  State<CrossFade> createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  @override
  bool isfirst = true;
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 4), () {
  //     reload();
  //   });
  // }

  void reload() {
    setState(() {
      if (isfirst) {
        isfirst = false;
      } else {
        isfirst = true;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(width: 200, height: 200, color: Colors.red),
              secondChild: Image.asset(
                "assets/images/1.jpg",
                width: 100,
                height: 100,
              ),
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.easeIn,
              secondCurve: Curves.bounceInOut,
              crossFadeState: isfirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              reload();
            },
            child: Text("Animate CrossFade"),
          ),
        ],
      ),
    );
  }
}
