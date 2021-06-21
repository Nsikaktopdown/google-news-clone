import 'package:dio/dio.dart';

abstract class Service {
  final Dio dioClient;
  Service(this.dioClient){
     //dioClient.interceptors.add(LoggingInterceptors());
  }
}