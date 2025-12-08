import 'package:flutter/material.dart';

class NoteHome extends StatefulWidget {
  const NoteHome({super.key});

  @override
  State<NoteHome> createState() => _NoteHomeState();
}

class _NoteHomeState extends State<NoteHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E1E1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu_outlined),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu"),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Notes", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontFamily: "Playfair"),)
          ],
        ),

      )
    );
  }
}
