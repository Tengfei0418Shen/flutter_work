import 'package:dio/dio.dart';


var dio = Dio();
final Dio _dio = Dio(
  BaseOptions(
    baseUrl: 'http://10.40.232.190:8082',
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers:  {'contentType': 'application/json'}
  ),
);

setOptions(dio){
  dio.interceptors.add(LogInterceptor(responseBody: true));
  dio.options.baseUrl = 'http://10.40.232.190:8082';
  dio.options.headers = {'contentType': 'application/json'};
  return dio;
}

get(url){
  dio = setOptions(dio);
  return dio.get(url);
}

doPost(url,data){
  print('http://10.40.232.190:8082'+url);
  return _dio.post('http://10.40.232.190:8082'+url,data:data);
}
