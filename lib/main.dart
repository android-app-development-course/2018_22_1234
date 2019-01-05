import 'package:flutter/material.dart';
import 'index/index.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic  sqf_text = "加载中" ;
sqf_test() async {
  int a = 15;
  sqf_text = a.toString();
  // Get a location using getDatabasesPath
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'demo.db');

  // open the database
  Database database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
        // When creating the db, create the table
        await db.execute(
            'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
      });

  // Count the records
  int count = Sqflite.firstIntValue(await database.rawQuery('SELECT COUNT(*) FROM Test'));
  print(count);
// Close the database
  sqf_text = count.toString();
  await database.close();
}

void main() => runApp(new ZhiHu());



class ZhiHu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    sqf_test();

    return new MaterialApp(
      title: "汇享",
      home: new Index(),
    );
  }

}
