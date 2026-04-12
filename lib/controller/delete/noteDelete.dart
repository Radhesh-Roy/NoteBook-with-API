import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:notebook/model/noteModel.dart';

class NoteDelete{
  Future<List<NoteModel>>deleteNote({required int id})async{
  try{
    Uri uri=Uri.parse("https://appapi.coderangon.com/api/notes/delete/$id");
    var response=await http.delete(uri);

    if(response.statusCode==200){
      var data=jsonDecode(response.body)["notes"];

    }

  }catch(e){

    log("Error: $e");
  }
    
    return[];
  }
}