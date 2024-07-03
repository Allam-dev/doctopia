import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? _dio;
  static Dio getDio() {
    if (_dio == null) {
      _dio = Dio();
      _dio!.options.connectTimeout = const Duration(seconds: 30);
      _dio!.options.receiveTimeout = const Duration(seconds: 30);
      _dio!.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        responseHeader: true,
        requestBody: true,
      ));
    }
    return _dio!;
  }
}
