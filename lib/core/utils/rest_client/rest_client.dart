import 'package:dio/dio.dart';

class RestClient {
  // Dio를 이용한 RestClient 싱클톤 클래스
  final Dio _dio = Dio();

  static final RestClient _instance = RestClient._internal();

  Dio get getDio => _dio;

  factory RestClient() => _instance;

  RestClient._internal();
}
