import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:local_cache_sync/local_cache_sync.dart';
import 'package:share_app/models/ResponseDart.dart';



Dio _dio = Dio(
  BaseOptions(
    baseUrl: 'http://10.40.232.190:8083/api',
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers:  {'contentType': 'application/json'}
  ),
);
login(data) async{
  Response response = await _dio.post('/user/login',data:data) as Response;
  ResponseDart responsedart = ResponseDart.fromJson(
      json.decode(response.toString()));
  _dio.options.headers =  {"token":responsedart.data.token};
  return response;
}

get(url){
  print(_dio.options.headers);
  print(_dio.options.baseUrl+url);
  return _dio.get(url);
}

doPost(url,data){
  return _dio.post(url,data:data);
}
