import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  // Linux specific
  Process.start('cat', []).then((Process process) { // console DIR
    // transfer the output
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });

    // sent to the process
    process.stdin.writeln('Hello World');

    // stop the process
    Process.killPid(process.pid);

    // get the exit code
    process.exitCode.then((int code) {
      print('Exit code: ${code}');

      // exit
      exit(0);
    });
  });
}