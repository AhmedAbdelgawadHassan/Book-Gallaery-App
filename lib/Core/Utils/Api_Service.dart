// ignore_for_file: unused_field

import 'package:dio/dio.dart';

class ApiService 
{
 final  String baseUrl = 'https://www.googleapis.com/books/v1/';  
 final Dio _dio;
  ApiService( Dio dio) : _dio = dio;



  Future<Map<String,dynamic>> get({required String EndPoint}) async {
    var Response= await _dio.get("$baseUrl$EndPoint");
    return Response.data;
    

  }
 

 

}

