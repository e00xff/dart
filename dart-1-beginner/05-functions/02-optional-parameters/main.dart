void main(List<String> args) {
  sayHello('Levan');

  download('myfile.txt');
  download('myfile.txt', true);
}

void sayHello([String name = '']) {
  if(name.isNotEmpty) name = name.padLeft(name.length + 1);
  print('Hello${name}');
}

void download(String file, [bool open = false]) {
  print('Downloading ${file}');
  if(open) print('Opening ${file}');
}