import 'package:demo/Database/Data/dbconnnection.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String errormsg = "";
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
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
          showModalBottomSheet(
            context: context,
            builder: (Context) {
              return Container(
                padding: EdgeInsets.all(11),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Add Notes",
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    SizedBox(height: 21),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: "Enter title here",
                        label: Text("Title"),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    TextField(
                      maxLines: 4,
                      controller: descController,
                      decoration: InputDecoration(
                        hintText: "Enter Desc here",
                        label: Text("Desc"),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    ),
                    SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () async {
                              var title = titleController.text.trim();
                              var desc = descController.text.trim();
                              if (title.isNotEmpty && desc.isNotEmpty) {
                                bool check = await dbref!.addNote(
                                  mTitle: title,
                                  mDesc: desc,
                                );
                                if (check) {
                                  getNotes();
                                }
                              } else {
                                errormsg = "please fill all required blanks";
                                setState(() {});
                              }
                              Navigator.pop(context);
                            },
                            child: Text("Add note"),
                          ),
                        ),
                        SizedBox(width: 11),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Cancel"),
                          ),
                        ),
                      ],
                    ),
                    Text("$errormsg"),
                  ],
                ),
              );
            },
          );
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
