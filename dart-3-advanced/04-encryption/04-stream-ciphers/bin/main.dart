import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) {

  final keyBytes = randomBytes(16);
  final key = KeyParameter(keyBytes);

  final iv = randomBytes(8);
  final params = ParametersWithIV(key, iv);
  
  StreamCipher cipher = StreamCipher("Salsa20");
  cipher.init(true, params);

  // encrypt
  String plainText = 'hello world';
  Uint8List plainData = createUint8ListFromString(plainText);
  Uint8List encryptedData = cipher.process(plainData);
  
  // decrypt
  cipher.reset();
  cipher.init(true, params);
  Uint8List decryptedData = cipher.process(encryptedData);

  displayUnit8List('Plain text', plainData);
  displayUnit8List('Encrypted data', encryptedData);
  displayUnit8List('Decrypted data', decryptedData);

  // make sure they match
  Function eq = const ListEquality().equals;
  assert(eq(plainData, decryptedData));

  print(utf8.decode(decryptedData));
}

// from tutorial 2
Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(utf8.encode(value));

// from tutorial 2
void displayUnit8List(String title, Uint8List value) {
  print(title);
  print(value);
  print(base64.encode(value));
  print('');
}

// from tutorial 3
Uint8List randomBytes(int length) {
  final rnd = SecureRandom("AES/CTR/AUTO-SEED-PRNG");

  final key = Uint8List(16);
  final keyParam = KeyParameter(key);
  final params = ParametersWithIV(keyParam, Uint8List(16));

  rnd.seed(params);

  var random = Random();

  for(int i = 0; i < random.nextInt(255); i++) {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}

