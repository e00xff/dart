import 'dart:io';
void main(List<String> args) {
  // list all files in a directory - linux specific
  Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
    print('Exit code: ${results.exitCode}');
  });
}