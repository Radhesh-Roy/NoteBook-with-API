class NoteModel{
  int? id;
  String?note;
  String? createAt;
  String? updateAt;
  NoteModel({this.id,  this.note, this.createAt, this.updateAt});

  NoteModel.fromJson(Map<String, dynamic> json){
   id= json["id"];
    note=json["note"];
    createAt=json["create_at"];
    updateAt=json["updated_at"];


  }
}