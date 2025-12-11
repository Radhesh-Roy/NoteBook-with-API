import 'dart:developer';

import 'package:http/http.dart' as http;

class EditNote{
  Future<List>editNote({required int id, required String notes})async{
    try{
Uri uri= Uri.parse("https://appapi.coderangon.com/api/notes/update/$id");
      var response= await http.put(uri, body: {"note": notes}, headers: {"Accept": "Application/json"});

    }catch(e){
      log("Error: $e");
    }
    return[];
  }
}