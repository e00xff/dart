import 'dart:io';
void main(List<String> args) async {
  
  // 1. step 1: run tcp server (01-tcp-server)
  // 2. step 2: run tcp client (02-tcp-client)

  var socket = await Socket.connect('127.0.0.1', 3000);
  print('Connected');
  socket.write('Hello World');
  print('Sent, closing');

  await socket.close();
  print('Closed');
  exit(0);

}