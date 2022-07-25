import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) {
  print(randomBytes(8));
}

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