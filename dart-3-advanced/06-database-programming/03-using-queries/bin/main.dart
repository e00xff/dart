import 'dart:async';
import 'dart:io';
 
import 'package:mysql1/mysql1.dart';
 
Future main() async {
  try {
    final db = await MySqlConnection.connect(ConnectionSettings(
      host: '127.0.0.1',
      port: 3306,
      user: 'root',
      // password: '',
      db: 'db_dart',
      timeout: Duration(seconds: 30),
      // useSSL: false,
      // useCompression: false,
    ));
 

    // Insert some data
    var result = await db.query(
        'INSERT INTO teachers (name, topic) values (?, ?)', 
        ['Bob', 'bob@bob.com']
    );
    print('Inserted row id=${result.insertId}');


    // var query = 'INSERT INTO teachers (name, topic) values (?, ?)';
    // insert(db, query, 'Bob', 'Science');
    // insert(db, query, 'Mary', 'Shop');
 
    // insertMulti(db, query, [
    //   ['Frank', 'Science'],
    //   ['Agnes', 'Shop']
    // ]);
 
    db.close();
    exit(0);

  } catch (error) {
    print("Error: $error");
  }
}
 
// void insert(MySqlConnection db, String query, String name, String topic) async {
//   var result = await db.query(query, [name, topic]);
//   print(result);
//   // print('New user id = ${result.insertId}');
// }
 
// void insertMulti(
//     MySqlConnection db, String query, Iterable<List<String>> entries) async {
//   var results = await db.queryMulti(query, entries);
//   for (var result in results) {
//     print('New user id = ${result.insertId}');
//   }
// }