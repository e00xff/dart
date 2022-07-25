import 'dart:async';
import 'dart:io';
 
import 'package:mysql1/mysql1.dart';
 
// Future main() async {
//   try {
//     final db = await MySqlConnection.connect(ConnectionSettings(
//       host: '127.0.0.1',
//       port: 3306,
//       user: 'root',
//       // password: '',
//       db: 'db_dart',
//       timeout: Duration(seconds: 30),
//       // useSSL: false,
//       // useCompression: false,
//     ));
 
    // // Query the database using a parameterized query
    // var results = await db.query('SELECT * FROM teachers WHERE id = ?', [2]);
    // for (var row in results) {
    //   print('${row[0]}, ${row[1]}, ${row[2]}');
    // }
 
//     db.close();
//     exit(0);

//   } catch (error) {
//     print("Error: $error");
//   }
// }


void main(List<String> args) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: '127.0.0.1',
    port: 3306,
    user: 'root',
    // password: '',
    db: 'db_dart',
    timeout: Duration(seconds: 30),
    // useSSL: false,
    // useCompression: false,
  ));

  find(conn, 'Mari');
}

Future find(var conn, String name) async {
    var results = await conn.query('SELECT * FROM teachers WHERE name = ?', [name]);

    for (var row in results) {
      print('${row[0]}, ${row[1]}, ${row[2]}');
    }
}