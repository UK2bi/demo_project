import 'package:flutter/material.dart';

import '../models/note-model.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  NoteModel note = NoteModel();
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  // controller üks klass mis hoiab teksti või kui teksti sisestatkse mujalt siis widget saab teksti conrolleri kaudu

  @override
  // kui esimest korda klassi luuakse siis tahan et note oleks täidetud
  void initState() { // Kui oleks react siis oleks usedstate tüüpi string
    note.message = "This is a test message for you";
    note.title = "Demo note uus";
    note.emoji = "👍";
    note.date = DateTime.now();

    titleController.text = note.title;
    messageController.text=note.message;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: "Title"),

                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  //edgeinsets kasutame
                  child: TextField(
                    controller: messageController,
                    maxLines: 16,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Your message",hintText: "Tell me your thoughts"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
