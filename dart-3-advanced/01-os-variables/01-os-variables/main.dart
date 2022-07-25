import 'dart:io';
void main(List<String> args) {
  print('OS: ${Platform.operatingSystem} ${Platform.version}');

  if(Platform.isWindows) {
    print('Run windows code');
  } else {
    print('Run normal code');
  }

  print('Path: ${Platform.script.path}');
  print('Dart: ${Platform.executable}');

  print('Env:');
  Platform.environment.keys.forEach((key) {
    print('${key}  ${Platform.environment[key]}');
  }); 

}