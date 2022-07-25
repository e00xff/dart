import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:pointycastle/pointycastle.dart';

// AES - Advanced Encryption Standard
void main(List<String> arguments) {

  final key = randomBytes(16);
  final params = KeyParameter(key);

  BlockCipher cipher = BlockCipher("AES");
  cipher.init(true, params);

  // Encrypted
  String plainText = 'Hello World';
  Uint8List plainData = createUint8ListFromString(plainText.padRight(cipher.blockSize)); // PAD - not 1000% secure!
  Uint8List encryptedData = cipher.process(plainData);

  // Decrypted
  cipher.reset();
  cipher.init(false, params);
  Uint8List decryptedData = cipher.process(encryptedData);

  displayUnit8List('Plain Text', plainData);
  displayUnit8List('Encrypted data', encryptedData);
  displayUnit8List('Decrypted data', decryptedData);

  // Make sure they match
  Function eq = const ListEquality().equals;
  assert(eq(plainData, decryptedData));

  print(utf8.decode(decryptedData).trim());
}

// from tutorial 2
Uint8List createUint8ListFromString(String value) => Uint8List.fromList(utf8.encode(value));

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

