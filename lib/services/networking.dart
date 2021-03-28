import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);

  final String url;

  Future getData() async{
    // var url = 'https://samples.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&appid=25dba8dfae4059dbd9d524ef34dff57a';
    var response =  await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}