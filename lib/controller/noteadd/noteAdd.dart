

import 'dart:developer';

import 'package:http/http.dart';

class NoteAdd{
  
  Future<List> noteAdd( {required String data})async{
    try{
      Uri a=Uri.parse("https://appapi.coderangon.com/api/notes/add");
      var responce=await post(a, body: {"note": data}, headers: {"accept": "application/json"});

    }catch(e){
      log("Error: ${e}");
    }
    
    return[];
  }
  
}