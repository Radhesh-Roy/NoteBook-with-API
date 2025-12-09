import 'package:flutter/material.dart';

class NoteAdd extends StatefulWidget {
  const NoteAdd({super.key});

  @override
  State<NoteAdd> createState() => _NoteAddState();
}
class _NoteAddState extends State<NoteAdd> {
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
                onTap: (){},
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
