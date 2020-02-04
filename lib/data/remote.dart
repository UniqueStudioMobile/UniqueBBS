import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

class RemoteDataSource {
  static final baseUrl = 'https://bbs.hustunique.com/api';
  static Dio _dio = Dio();
  static Options _options = Options();

  static Future<Response<T>> _post<T>(String path, {data}) async {
    return _dio.post<T>(baseUrl + path, data: data, options: _options);
  }

  static Future<Response<T>> _get<T>(String path, {params}) {
    return _dio.get<T>(baseUrl + path,
        queryParameters: params, options: _options);
  }
}
