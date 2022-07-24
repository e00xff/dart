import 'dart:io';

void main(List<String> args) {

  String path = '/'; // for mac and linux
  // String path = 'C:\\'; \\ For windows
  Directory dir = new Directory(path);

  if(dir.existsSync()) {
    print('exists');
  } else {
    print('not found');
  }

}