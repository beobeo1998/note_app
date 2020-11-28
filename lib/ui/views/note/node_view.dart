import 'package:flutter/material.dart';
import 'package:note_app/ui/views/note/node_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NoteViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: Text(model.title)),
        body: Center(
          child: Text('Hello My Note'),
        ),
      ),
      viewModelBuilder: () => NoteViewModel(),
    );
  }
}