import 'package:dio/dio.dart';

class RequestManager {
  Dio dio;

  RequestManager({baseURL = "https://my-json-server.typicode.com/insidemybrain/twitteranalysis_fakeapi", connectTimeout = 60000, receiveTimeout = 60000}) {
    dio = Dio();
    dio.options.baseUrl = baseURL;
    dio.options.connectTimeout = connectTimeout;
    dio.options.receiveTimeout = receiveTimeout;
    _addLogInterceptor();
  }

  _addLogInterceptor() {
    dio.interceptors.add(LogInterceptor());
  }

}