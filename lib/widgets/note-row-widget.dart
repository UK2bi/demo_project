import 'package:demo_project/models/note-model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteRowWidget extends StatelessWidget {
  //flutter konstruktor kahte tüüpi parameetreid( poistsiooniline ja nimeline)
  //key on id, igal komponendil võib olla pma id, mille järgi leida ja testida
  //kuskil teises kohas appi-s saab sellee viidata, selle widgetile
  // positsiooniline oleks ilma loogiliste sulgudeta { ja selle pole nime
  const NoteRowWidget( {Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.ac_unit_rounded),
        Column(
          children: [
            Text(note.title),
            Text(note.message),
          ],
        ),
        Text(DateFormat('dd.MM.yyyy').format(note.date))
      ],
    );
  }
}
