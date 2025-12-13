import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:notebook/model/noteModel.dart';
class GetData{
 Future<List<NoteModel>>getData() async{
  try{
   Uri a=Uri.parse("https://appapi.coderangon.com/api/notes");
   var r=await http.get(a);
   List<NoteModel>mydata=[];
   if(r.statusCode==200){
    var data=jsonDecode(r.body)['notes'];
    for(var i in data){
     var m=NoteModel.fromJson(i);
     mydata.add(m);

    }
    return mydata;
   }
  }catch (e){
   log("Error: ${e}");
  }
  return[];
 }
}