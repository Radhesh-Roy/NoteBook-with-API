import 'dart:developer';

import 'package:http/http.dart' as http;

class NoteDelete{
  Future<List>deleteNote({required int id})async{
  try{
    Uri uri=Uri.parse("https://appapi.coderangon.com/api/notes/delete/$id");
    var response=await http.delete(uri);

  }catch(e){

    log("Error: $e");
  }
    
    return[];
  }
}