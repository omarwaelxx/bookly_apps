
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio ;
  final _baseUrl = "https://www.googleapis.com/";
ApiService(this.dio);

get({required String endpoint,Map<String,dynamic>?query}) async {
var response = await dio.get("$_baseUrl$endpoint",queryParameters: query);
return response.data;
}



}