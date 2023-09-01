import 'package:dio/dio.dart';

class ClientHttp {
  static final client = Dio();

  static Future<Response> get(String path) async {
    return client.get(path);
  }
}
