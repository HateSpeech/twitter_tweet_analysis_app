import 'package:dio/dio.dart';

class RequestManager {
  Dio dio;

  RequestManager({baseUrl = "https://my-json-server.typicode.com/insidemybrain/twitteranalysis_fakeapi", connectTimeout = 60000, receiveTimeout = 60000}) {
    dio = Dio();
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = connectTimeout;
    dio.options.receiveTimeout = receiveTimeout;
    _addLogInterceptor();
  }

  _addLogInterceptor() {
    dio.interceptors.add(LogInterceptor());
  }

}