import 'dart:io';

import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

void main(List<String> arguments) {
  List<String> files = [];
  Directory.current.listSync().forEach((FileSystemEntity fse) {
    if(fse.statSync().type == FileSystemEntityType.file) files.add(fse.path);
  });

  String zipFile = '/Users/dozana/Desktop/Dev/Dart/dart-advanced/03-compression/03-ZIP-files/files/compressed.zip';
  
  zip(files, zipFile);

  unzip(zipFile, '/Users/dozana/Desktop/Dev/Dart/dart-advanced/03-compression/03-ZIP-files/files/decompresed');
}

void zip(List<String> files, String file) {
  Archive archive = Archive();
 
  for (var path in files) {
    File file = File(path);
 
    ArchiveFile archivefile = ArchiveFile(
        p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archivefile);
  }
 
  ZipEncoder encoder = ZipEncoder();
  File f = File(file);
  var data = encoder.encode(archive);
  if (data != null) f.writeAsBytesSync(data);
 
  print('Compressed');
}

void unzip(String zip, String path) {
  File file = File(zip);
 
  Archive archive = ZipDecoder().decodeBytes(file.readAsBytesSync());
 
  for (var archivefile in archive) {
    File file = File('$path/${archivefile.name}');
    file.createSync(recursive: true);
    file.writeAsBytesSync(archivefile.content);
  }
 
  print('Decompressed');
}