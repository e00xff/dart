import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {

  var data = 'Hello World';

  List<int> dataToSend = utf8.encode(data);
  int port = 3000;

  // server
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port).then((RawDatagramSocket udpSocket) {
    udpSocket.listen((RawSocketEvent event) {
      if(event == RawSocketEvent.read){
        Datagram? dg = udpSocket.receive();
        print(utf8.decode(dg!.data));
      }
    });

    // client
    udpSocket.send(dataToSend, InternetAddress.loopbackIPv4, port);
    print('Sent!');

  });
}
