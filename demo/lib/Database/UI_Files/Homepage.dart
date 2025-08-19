import 'package:demo/Database/Data/dbconnnection.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, dynamic>> allNotes = [];
  DBConnection? dbref;
  @override
  void initState() {
    super.initState();
    dbref = DBConnection.getInstance();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      body: allNotes.isNotEmpty
          ? ListView.builder(
              itemCount: allNotes.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Text(
                    '${allNotes[index][DBConnection.COLUMN_NOTE_SNO]}',
                  ),
                  title: Text(allNotes[index][DBConnection.COLUMN_NOTE_TITLE]),
                  subtitle: Text(
                    allNotes[index][DBConnection.COLUMN_NOTE_DESC],
                  ),
                );
              },
            )
          : Center(child: Text("No Notes Yet")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool check = await dbref!.addNote(
            mTitle: "New Note",
            mDesc: "Do what you",
          );
          if (check) {
            getNotes();
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void getNotes() async {
    allNotes = await dbref!.getAllNotes();
    setState(() {});
  }
}
