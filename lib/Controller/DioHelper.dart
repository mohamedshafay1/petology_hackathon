import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;

  static init()
  {
    dio=Dio(
      BaseOptions(
        baseUrl: 'https://petology.orangedigitalcenteregypt.com',
        receiveDataWhenStatusError: true,


      ),

    );
  }

  static Future<Response<dynamic>> getData({required String url,Map<String, dynamic>?query,String? token})
  async {

    return await dio.get(url,queryParameters: query);
  }

  static Future<Response<dynamic>> postData({required String url,Map<String, dynamic>?query,dynamic data,String? token})
  async{
    return await  dio.post(url,queryParameters:query ,data:data );
  }
  static Future<Response<dynamic>> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    return await dio.put(url, queryParameters: query, data: data);
  }

}