import 'package:dio/dio.dart';
class DioHelperStore {
  static Dio dio = Dio();
  static init() {
    dio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
    ));
  }
  static Future<Response> getData(
      {required String url,
        Map<String, dynamic>? query,
        Map<String,dynamic>?data,
        String lang = 'ar',
        String? token}) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': 'en',
      'Authorization': token ?? '',
    };
    return await dio.get(url, queryParameters: query,data: data);
  }

  static Future<Response> postData(
      {required String url,
        Map<String, dynamic>? query,
        required Map<String, dynamic> data,
      }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData(
      {required String url,
        Map<String, dynamic>? query,
        required Map<String, dynamic> data,
        String lang = 'ar',
        String? token}) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': 'en',
      'Authorization': token ?? '',
    };
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
  static Future<Response> delData({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dio.delete(url, data: data);
  }
}
