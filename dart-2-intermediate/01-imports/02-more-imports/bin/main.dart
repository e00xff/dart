// synchronous - One at a time
// asynchronous - Many at once

import 'package:http/http.dart' as http;
void main(List<String> arguments) {
  var url = "http://voidrealms.com/";
  http.get(Uri.parse(url)).then((response) {
    print("Response status code: ${response.statusCode}"); //200 means OK
    print("Response body: ${response.body}");
  });
}