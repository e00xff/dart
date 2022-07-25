import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) {
  Digest digest = Digest("SHA-256");
  String value = 'Hello World';

  Uint8List data = Uint8List.fromList(utf8.encode(value));
  Uint8List hash = digest.process(data);

  print(hash);
  print(base64.encode(hash)); // encoding is not encryption
}
