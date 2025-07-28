import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  var namefromhome;
  MyProfile(this.namefromhome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome ,$namefromhome",
                style: TextStyle(fontSize: 24, color: Colors.blueGrey),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
