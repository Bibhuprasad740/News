import 'package:dio/dio.dart';

String apiKey = '61d66901344b4c92b23b67ebd8e32fac';
String baseUrl = 'https://newsapi.org/v2';
DateTime date = DateTime.now();
String today = date.toString().split(' ')[0];

class NetworkHelper {
  // String defaultSearchString = 'World Affairs';
  String searchString;
  NetworkHelper({this.searchString = 'World Affairs'}); // optional argument
  Future<String> response() async {
    Response response =
        await Dio().get('$baseUrl/everything?q=$searchString&apiKey=$apiKey');
    if (response.statusCode == 200) {
      return response.toString();
    } else {
      return 'error';
    }
  }
}

/**
 * https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=61d66901344b4c92b23b67ebd8e32fac
 */