import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  var nameController = TextEditingController();
  var namevalue = "No name saved";

  get prefs => null;
  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared Preference")),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    var name = nameController.text.toString();
                    var prefs = await SharedPreferences.getInstance();
                    prefs.setString("name", name);
                  },
                  child: Text("Save"),
                ),
                SizedBox(height: 10),
                Text(
                  namevalue,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getValue() async {
    var prefes = await SharedPreferences.getInstance();
    var getName = prefs.getString("name");
    namevalue = getName ?? "No name saved";
    setState(() {});
  }
}
