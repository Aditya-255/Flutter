import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/note.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  TextEditingController titleTxtCntrl = TextEditingController();
  TextEditingController descTxtCntrl = TextEditingController();
  List<Note> notes = [];
  String selId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes App')),
      body: Column(
        children: [
          // add
          TextField(
            controller: titleTxtCntrl,
            decoration: InputDecoration(
              hintText: 'Enter title',
              labelText: 'Title',
            ),
          ),
          TextField(
            controller: descTxtCntrl,
            decoration: InputDecoration(
              hintText: 'Enter Description',
              labelText: 'Description',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // add logic
              if (titleTxtCntrl.text.isNotEmpty &&
                  descTxtCntrl.text.isNotEmpty) {
                if (selId == "") {
                  notes.add(
                    Note(
                      id: DateTime.now().toIso8601String(),
                      title: titleTxtCntrl.text,
                      description: descTxtCntrl.text,
                    ),
                  );
                } else {}

                titleTxtCntrl.clear();
                descTxtCntrl.clear();
                setState(() {});
              } else {}
            },
            child: Text('Add'),
          ),
          // display
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) => ListTile(
                title: Text('${notes[index].title}'),
                subtitle: Text('${notes[index].description}'),
                trailing: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // height: 50,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          notes.removeAt(index);
                          setState(() {});
                        },
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          titleTxtCntrl.text = notes[index].title;
                          descTxtCntrl.text = notes[index].description;
                          selId = notes[index].id;
                        },
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
