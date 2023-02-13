import 'dart:developer';

import 'package:dio/dio.dart';
import '../model/Single_User_model.dart';
import '../model/search_model.dart';

abstract class GetInfo {
  GetInfo._();

  static getSingleUserHome() async {
    Dio _dio = Dio(BaseOptions(
      headers: {
        'X-RapidAPI-Key': 'f90efa3b4fmsh90e4b20789011a8p196239jsn36829604a60c',
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
      log(response.data.toString());

      return Singleuser.fromJson(response.data);
    } catch (e) {
      print("Error1: $e");
    }
  }

  static search(String text) async {
    Dio _dio = Dio(BaseOptions(
      headers: {
        'X-RapidAPI-Key': 'f90efa3b4fmsh90e4b20789011a8p196239jsn36829604a60c',

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

      return Search.fromJson(response.data);
    } catch (e) {
      print("Error2: $e");
    }
  }

  static getUsersInfo({required String id}) async {
    Dio _dio = Dio(BaseOptions(
      headers: {
        'X-RapidAPI-Key': 'f90efa3b4fmsh90e4b20789011a8p196239jsn36829604a60c',
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
      var response = await _dio.get('/public_user_posts?userid=$id');
      log(response.data.toString());

      return Singleuser.fromJson(response.data);
    } catch (e) {
      print("Error1: $e");
    }
  }
}



//8f7674f335mshc466839187b5405p1d3ae4jsn57c9d401092c   Oybek
//4405bc4b49msh1355f5144d559aap197ae0jsn1ec9740f93ec   Oybek2
//f90efa3b4fmsh90e4b20789011a8p196239jsn36829604a60c   Oybek3

// 2ee4e2c7a9mshb25f06eef8addfap1320c2jsn74621aeadcc5 Sardor

//91d31d4cb8mshdd2eaed2c3bf3b5p1bc6d3jsn9e4eb668d330 Bek