abstract class ApiConsumer {
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParametrs});
  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? queryParametrs,
    Map<String, dynamic>? body,
  });
  
  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? queryParametrs,
    Map<String, dynamic>? body,
  });
  }
