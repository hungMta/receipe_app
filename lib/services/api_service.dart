import 'package:dio/dio.dart';

class ApiService extends DioMixin {
  ApiService() {
    options = BaseOptions(
      baseUrl: 'https://hf-android-app.s3-eu-west-1.amazonaws.com',
    );
    httpClientAdapter = HttpClientAdapter();
  }
}
