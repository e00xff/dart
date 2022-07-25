import 'dart:io';
import 'dart:convert';
void main(List<String> args) {
  String data = '';
  for(int i = 0; i < 100; i++) {
    data = data + ' Hello world\r\n';
  }

  // original data
  var original = utf8.encode(data);

  // compress
  var compressed = gzip.encode(original);

  // decompress
  var decompress = gzip.decode(compressed);

  print('Original ${original.length} bytes');
  print('Compresed ${compressed.length} bytes');
  print('Decompresed ${decompress.length} bytes');

  String decoded = utf8.decode(decompress);
  assert(data == decoded);

  print(decoded);
}