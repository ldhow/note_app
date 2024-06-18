class NoteModel {
  int id;
  String? title;
  String? body;
  DateTime created;

  NoteModel({required this.id, this.title, this.body, required this.created});

  Map<String, dynamic> toMap() {
    return ({"id": id, "title": title, "body": body, "created": created});
  }
}
