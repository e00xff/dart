import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  int zlib = testCompress(ZLibCodec());
  int gzip = testCompress(GZipCodec());

  print('zlib = ${zlib}'); 
  print('zlib = ${gzip}'); 
} 

String generateData() {
  String data = '';

  for(int i = 0; i < 1000; i++) {
    data = data + 'Hello World\r\n';
  }

  return data;
}

int testCompress(var codec) {
  String data = generateData();

  List<int> original = utf8.encode(data);
  List<int> compressed = codec.encode(original);
  List<int> decompressed = codec.decode(compressed);

  print('Testing ${codec.toString()}');
  print('Original ${original.length}');
  print('Compressed ${compressed.length}');
  print('Decompressed ${decompressed.length}');

  print('');

  String decoded = utf8.decode(decompressed);
  assert(data == decoded);

  return compressed.length;  
}