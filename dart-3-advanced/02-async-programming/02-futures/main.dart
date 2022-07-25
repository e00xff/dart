import 'dart:io';
import 'dart:async';

void main(List<String> args) {
  String path = Directory.current.path + '/file.txt';
  print('Appended to ${path }');

  File file = new File(path);

  Future<RandomAccessFile> f = file.open(mode: FileMode.append);

  f.then((RandomAccessFile raf) {
    print('File has been opened');

    raf.writeString('Hello World').then((value) {
      print('File has been appended'); 
    }).catchError(() => print('An error occured')).whenComplete(() => raf.close());
  });

  print('*** The end ***');

}