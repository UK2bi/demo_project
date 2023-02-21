

import 'package:demo_project/controllers/random-number-generator.dart';
import 'package:demo_project/models/note-model.dart';
import 'package:demo_project/widgets/note-row-widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  num rand = getRandomNumber();
  void getNewNum(){
setState(() {
  rand = getRandomNumber();
});
  }
  //map
  List<Widget> getNotes(){
    List<NoteModel> noteModels = getTestNotes();
    //noteModels on objekt mis hoiab meie kirjeid
    List<Widget> noteWidgets = [];
    for(int i =0; i<noteModels.length; i++){
      noteWidgets.add(NoteRowWidget(note: noteModels[i]));

    }
    return noteWidgets;

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(// widget mida kasutame
      appBar: AppBar(title: const Text("Märkmik"),),
      //container on hoidik, kus hoitakse teisi widgeteid, võimalik hoida 1 widgetit
        // note nimeline parameeter konstruktoril, kui loome siin objekti siis peame määrama et note on mingi asi
      body: Center(child: Column(
        children: getTestNotes().map((note) => NoteRowWidget(note: note)).toList(),


      )),
      // Center on klass mis võtab kogu ruumi ja enda keskel seab keskele
      //column lähevad üksteise alla, main axxis ülevalt alla, cross axis vasakult paremale, row vastupidi
    );
  }
  }


