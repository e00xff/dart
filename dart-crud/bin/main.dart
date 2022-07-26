import 'dart:async';
import 'package:mysql1/mysql1.dart';

Future main() async {

  try {
    // Open a connection
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      // password: '', 
      db: 'db_dart',
      // timeout: Duration(seconds: 30),
      // useSSL: false,
      // useCompression: false,
    ));

    /* ******************************
    * CRUD OPERATIONS
    ******************************* */

    // Create Table
    // var createQuery = 'CREATE TABLE contacts (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name varchar(255), last_name varchar(255), email varchar(255), phone varchar(255))';
    // createTable(conn, createQuery);


    // Create record
    // var createQuery = 'INSERT INTO contacts (first_name, last_name, email, phone) values (?, ?, ?, ?)';
    // createRecord(conn, createQuery, 'John', 'Doe', 'john@mail.com', '593111111');
    // createRecord(conn, createQuery, 'Annie', 'Miller', 'annie@mail.com', '599777777');

    // Create records
    // createRecords(conn, createQuery, [
    //   ['Marta', 'Soroznishvili', 'marta@mail.com', '555888888'],
    //   ['Meli', 'Soroznishvili', 'meli@mail.com', '444555555']
    // ]);


    // Read records
    var readQuery = 'SELECT * FROM contacts';
    readRecords(conn, readQuery);

    // Update Record
    // var updateQuery = 'UPDATE contacts SET first_name=? WHERE id=?';
    // updateRecord(conn, updateQuery, 'melo', 4);

    // Delete Record
    // var deleteQuery = 'DELETE FROM contacts WHERE id = ?';
    // deleteRecord(conn, deleteQuery, 4);

    // Find Record
    // var findQuery = 'SELECT id, first_name, last_name FROM contacts WHERE id = ?';
    // findRecord(conn, findQuery, 3);

  } catch (error) {
    print("Error: $error");
  }
}

void createTable(MySqlConnection conn, String createTableQuery) async {
  await conn.query(createTableQuery);
  print('Table created.');
}

void createRecord(MySqlConnection conn, String createQuery, String first_name, String last_name, String email, String phone) async {
  var result = await conn.query(createQuery, [first_name, last_name, email, phone]);
  print('New record with id = ${result.insertId} created.');
}

void createRecords(MySqlConnection conn, String createQuery, Iterable<List<String>> entries) async {
  var results = await conn.queryMulti(createQuery, entries);
  
  for (var result in results) {
    print('New record with id = ${result.insertId} created.');
  }
}

void readRecords(MySqlConnection conn, String readQuery) async {
  var results = await conn.query(readQuery);
 
  print('Results ${results.length} rows');

  for (var result in results) {
    print("${result[0]}, ${result[1]}, ${result[2]}");
  }
}

void updateRecord(MySqlConnection conn, String updateQuery, String updateText, int recordId) async {
  await conn.query(updateQuery, [updateText, recordId]);
  print('Record updated.');
}

void deleteRecord(MySqlConnection conn, String deleteQuery, int recordId) async {
  await conn.query(deleteQuery, [recordId]);
  print('Record deleted.');
}

void findRecord(MySqlConnection conn, String findQuery, int recordId) async {
  var results = await conn.query(findQuery, [recordId]);
  
  for (var row in results) {
    print('ID: ${row[0]}, First Name: ${row[1]} Last Name: ${row[2]}');
  }
}
