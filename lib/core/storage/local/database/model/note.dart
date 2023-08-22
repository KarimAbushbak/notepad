import '../../../../constants.dart';
class Note {
  late int id;
  late String title;
  late String content;

  Note();

  Note.fillData({
    required this.id,
    required this.title,
    required this.content,
  });

  Note.fromMap(Map<String, dynamic> map) {
    id = map[Constants.databaseNotesIdColumnName];
    content = map[Constants.databaseNotesContentColumnName];
    title = map[Constants.databaseNotesTitleColumnName];
  }
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      Constants.databaseNotesContentColumnName: content,
      Constants.databaseNotesTitleColumnName: title,
    };
  }
}