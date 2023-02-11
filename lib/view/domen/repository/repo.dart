import 'package:dio/dio.dart';
import '../model/search_model.dart';
import '../model/singleUser_model.dart';

abstract class GetInfo {
  GetInfo._();

  static getSingleUserHome() async {
    Dio _dio = Dio(BaseOptions(
      headers: {
        'X-RapidAPI-Key': ' 91d31d4cb8mshdd2eaed2c3bf3b5p1bc6d3jsn9e4eb668d330',
       
       
        'X-RapidAPI-Host': 'instagram47.p.rapidapi.com'
      },
      baseUrl: "https://instagram47.p.rapidapi.com",
    ))
      ..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          requestHeader: true,
          responseHeader: false));
    try {
      var response = await _dio.get('/public_user_posts?userid=173560420');
      print(response.data.toString());

      return singleuserFromJson(response.data);
    } catch (e) {
      print(e);
    }
  }


  static search(String text) async {
    Dio _dio = Dio(BaseOptions(
      headers: {
        'X-RapidAPI-Key': '91d31d4cb8mshdd2eaed2c3bf3b5p1bc6d3jsn9e4eb668d330',
       
        //8d73d12368msh94d59547af4d732p151035jsn05efea604202
        
        'X-RapidAPI-Host': 'instagram47.p.rapidapi.com'
      },
      baseUrl: "https://instagram47.p.rapidapi.com",
    ))
      ..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          requestHeader: true,
          responseHeader: false));
    try {
      var response = await _dio.get('/search?search=$text');
      print(response.data.toString());

      return searchFromJson(response.data);
    } catch (e) {
      print(e);
    }
  }


}
