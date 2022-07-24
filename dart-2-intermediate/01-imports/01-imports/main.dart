import './calculator.dart' as calculate;
import 'dart:convert';

void main(List<String> args) {
  print('Calculate result is: ${calculate.result(2, 3)}');
  calculate.sayHello();

  print('------');

  String encoded = base64Encode(Utf8Encoder().convert('Hello World'));
  print('encoded: ${encoded}');
 
  String decoded = Utf8Decoder().convert(base64Decode(encoded));
  print('decoded: ${decoded}');
}