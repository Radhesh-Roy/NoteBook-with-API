import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
class GetData{
 Future<List>getData() async{
  try{
   Uri a=Uri.parse("https://appapi.coderangon.com/api/notes");
   var r=await http.get(a);
   if(r.statusCode==200){
    var data=jsonDecode(r.body)['notes'];
    return data;
   }
  }catch (e){
   log("Error: ${e}");
  }
  return[];
 }
}