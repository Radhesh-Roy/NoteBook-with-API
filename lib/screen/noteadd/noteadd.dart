import 'package:flutter/material.dart';
import 'package:notebook/controller/noteadd/noteAdd.dart';
import 'package:notebook/screen/homepage/note.dart';

class NoteAddScreen extends StatefulWidget {
  const NoteAddScreen({super.key, this.id, this.note});
  final int? id;
  final String? note;

  @override
  State<NoteAddScreen> createState() => _NoteAddState();
}
class _NoteAddState extends State<NoteAddScreen> {
  TextEditingController notes= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E1E1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Text("Add Note", style: TextStyle(fontFamily: "Playfair", fontWeight: FontWeight.w600),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: InkWell(
                onTap: (){
                  NoteAdd().noteAdd(data: notes.text);
                Navigator.push(context, MaterialPageRoute(builder: (context) => NoteHome(),));

                },
                child: Icon(Icons.check)),
          )
        ],
      ),
      body: Column(
        children: [
          TextField(
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            decoration: InputDecoration(
              hintText: "Add Title",
              hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              )
            ),
          ),

            Container(
              child: TextField(
                controller: notes,
                decoration: InputDecoration(
                  hintText: "Add Description",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none
                  )
                ),
              ),
            ),

        ],
      ),
    );
  }
}
