import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), centerTitle: true),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final name = user['name']['first'];
          final email = user['email'];
          final picture = user['picture']['thumbnail'];
          return ListTile(
            title: Text(name.toString()),
            subtitle: Text(email),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                picture,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.person),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: fetchUser),
    );
  }

  Future<void> fetchUser() async {
    print("fetch user call");
    const url = 'https://randomuser.me/api/?results=5';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print("fetch user end");
  }
}
