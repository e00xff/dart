import 'dart:io';

import 'package:mysql1/mysql1.dart';

// void main(List<String> arguments) async {
  
Future main() async {
  try {
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
 
    var results = await conn.query('select * from teachers');
 
    print('Results ${results.length} rows');
 
    for (var row in results) {
      print("${row[0]}, ${row[1]}, ${row[2]}");
    }
 
    conn.close();
    exit(0);
  } catch (error) {
    print("Error: $error");
  }

  // MySqlConnection.connect(ConnectionSettings(
  //       host: '127.0.0.1', 
  //       port: 3306, 
  //       user: 'root', 
  //       db: 'db_dart')).then((conn){
  //       conn.query('SELECT * FROM teachers').then((results){
  //            for (var row in List.from(results)) {
  //                print('${row[0]}, ${row[1]}, ${row[2]}');
  //             }
  //             conn.close(); // closing database connection here
  //       });
  //   });
}
