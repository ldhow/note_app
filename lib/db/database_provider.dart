// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseProvider {
//   DatabaseProvider._();
//   static final DatabaseProvider db = DatabaseProvider._();
//   static Database _database;

//   Future<Database> get database async {
//     if (_database != null) {
//       return _database;
//     }

//     _database = await initDB();
//     return _database;
//   }

//   initDB() async {
//     return await openDatabase(join(await getDatabasesPath(), 'note_app.db'),
//         onCreate: (db, version) async {
//       await db.execute('''
//       CREATE TABLE notes  (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         title TEXT,
//         body TEXT,
//         created DATE)''');
//     }, version: 1);
//   }
// }
