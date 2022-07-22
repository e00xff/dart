import 'dart:io';
import 'dart:async';

void main(List<String> args) {
  stdout.write('What is your name?\r\n');
  String? name = stdin.readLineSync();

  name!.isEmpty ? stderr.write('Name is empty.\r\n') 
               : stdout.write('How  are you ${name}?\r\n');

  
  stdout.write('Enter your name : ');
  String? str1 = stdin.readLineSync();
 
  str1!.isEmpty ? stderr.write('Name is empty!!') 
              : stdout.write('Good Morning $str1');

}