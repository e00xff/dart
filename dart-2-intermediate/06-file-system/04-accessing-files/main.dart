import 'dart:io';
void main(List<String> args) {
  Directory dir = Directory.current;
  print(dir.path);

  File file = new File(dir.path + '/file.txt');
  
  writeFile(file);
  readFile(file);
}

void writeFile(File file) {
  // Append, Write
  RandomAccessFile raf = file.openSync(mode: FileMode.append);
  raf.writeStringSync('Hello World\r\nHow are you today?');
  raf.flushSync();
  raf.closeSync ();
}

void readFile(File file) {
  if(!file.existsSync()) {
    print('File not found');
    return;
  }

  print('Reading tring...');
  print(file.readAsStringSync());

  print('Reading Bytes... ');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));
}