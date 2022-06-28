import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/quotes_model.dart';

class DBHelper {
  DBHelper._();

  static final DBHelper dbHelper = DBHelper._();

  Database? db;

  String dbName = "test.db";
  String tableName = "test";

  String colId = "id";
  String col1 = "quote";

  Future<Database?> initDB() async {
    String path = join(await getDatabasesPath(), dbName);

    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      String query =
          "CREATE TABLE IF NOT EXISTS $tableName ($colId INTEGER PRIMARY KEY AUTOINCREMENT, $col1 TEXT);";

      await db.execute(query);
    });
    return db;
  }

  Future<int> insert1() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($col1) VALUES('The purpose of Over lives is\n         to be happy');";

    return await db!.rawInsert(query);
  }

  Future<int> insert2() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($col1) VALUES('Every strike brings me closer \n          to the next home run');";

    return await db!.rawInsert(query);
  }

  Future<int> insert3() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($col1) VALUES('  Life is really simple, but men \ninsist on making it complicated');";

    return await db!.rawInsert(query);
  }

  Future<int> insert4() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($col1) VALUES('The healthiest response\n         to life is joy');";

    return await db!.rawInsert(query);
  }

  Future<int> insert5() async {
    db = await initDB();

    String query =
        "INSERT INTO $tableName ($col1) VALUES('Life is a flower of which love\n           is the honey');";

    return await db!.rawInsert(query);
  }

  Future<List<Quotes>> fetchData() async {
    db = await initDB();

    String query = "SELECT * FROM $tableName";

    List<Map<String, dynamic>> data = await db!.rawQuery(query);

    List<Quotes> allData =
        data.map((e) => Quotes.fromMap(e)).toList();

    return allData;
  }
}
