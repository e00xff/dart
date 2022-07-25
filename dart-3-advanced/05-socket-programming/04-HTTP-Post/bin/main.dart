import 'package:http/http.dart' as http;
import 'dart:async';

void main(List<String> arguments) async {
  var url = Uri.https('httpbin.org', '/post');

  var response = await http.post(url, body: 'name:John&color=Blue');
  print('Response status ${response.statusCode}');
  print('Response body ${response.body}');
}
