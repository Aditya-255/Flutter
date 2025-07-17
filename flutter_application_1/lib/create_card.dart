// import 'dart:ui_web';

import 'package:flutter/material.dart';

import 'cart_page.dart';

class instacard extends StatelessWidget {
  const instacard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Container(
          color: Colors.black87,
          height: 800,
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " icc",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 15,
                  bottom: 15,
                  right: 5,
                ),
                child: Container(height: 350, color: Colors.black),
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
