import 'package:flutter/material.dart';
import 'package:flutter_nv/API/Model/Services/user_api.dart';
import 'package:flutter_nv/API/Model/user.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), centerTitle: true),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user.email;
          final Color = user.gender == "male" ? Colors.blue : Colors.pink;
          return ListTile(
            title: Text(email),
            subtitle: Text(user.cell),
            tileColor: Color,
          );
        },
      ),
    );
  }

  void fetchUser() async {
    final response = await UserApi.fetchUser();
    setState(() {
      users = response;
    });
  }

  // Future<void> fetchUser() async {
  //   print("fetch user call");
  //   const url = 'https://randomuser.me/api/?results=5';
  //   final uri = Uri.parse(url);
  //   final response = await http.get(uri);
  //   final body = response.body;
  //   final json = jsonDecode(body);
  //   final results = json['results'] as List<dynamic>;
  //   final tran = results.map((e) {
  //     return User(
  //       cell: e['cell'],
  //       email: e['email'],
  //       gender: e['gender'],
  //       nat: e['nat'],
  //       phone: e['phone'],
  //     );
  //   }).toList();
  //   setState(() {
  //     users = tran;
  //   });
  //   print("fetch user end");
  // }
}
