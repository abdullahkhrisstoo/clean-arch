import 'dart:convert';
import 'dart:io';

import 'package:clean_arch_templeate/core/api/api_consumer.dart';
import 'package:clean_arch_templeate/core/api/dio_interseptor.dart';
import 'package:clean_arch_templeate/core/api/end_point.dart';
import 'package:clean_arch_templeate/core/api/status_code.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class DioConsumer implements ApiConsumer {
  final Dio client;
  DioConsumer({required this.client}) {
    // * to get certificate
    (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    client.options
      ..baseUrl = EndPoint.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = ((status) {
        return status! < StatusCode.internalServerError;
      });
    client.interceptors.add(AppInterceptors());
  }
  @override
  Future get(String path, {Map<String, dynamic>? queryParametrs}) async {
    final response = await client.get(path, queryParameters: queryParametrs);
    return jsonDecode(response.data.toString());
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? queryParametrs,
      Map<String, dynamic>? body}) async {
    final response =
        await client.post(path, queryParameters: queryParametrs, data: body);
    return jsonDecode(response.data.toString());
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? queryParametrs,
      Map<String, dynamic>? body}) async {
    final response =
        await client.post(path, queryParameters: queryParametrs, data: body);
    return jsonDecode(response.data.toString());
  }
}
