import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tap/Models/categories.dart';
import 'package:tap/Models/profile.dart';

class WebServices {
  Future<Categories> getCategories() async {
    Categories model;

    try {
      var response = await Dio().get(
          'https://api.zipconnect.app/api/v1/category/616bdaa6a1b49050b2723b31');
      model = categoriesFromJson(jsonEncode(response.data));
      debugPrint('Categories loaded : ' + model.status.toString());
      return model;
    } catch (e) {
      print(e);
    }
  }

  Future<PaidProfile> getPaidProfile() async {
    PaidProfile pro;

    try {
      var response = await Dio().get(
        'https://api.zipconnect.app/api/v1/profile/me',
        options: Options(headers: {
          HttpHeaders.AUTHORIZATION:
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZDQ4ODBmMzdhM2UxNTk1MzNjN2E3NyIsImlhdCI6MTY0MTMxODQyNiwiZXhwIjoxNjQ5MDk0NDI2fQ.oJ0ykp8Hh2tyTBKie7XTVf05OwaxtQsx4vqRNIGkgyI'
        }),
      );
      pro = paidProfileFromJson(jsonEncode(response.data));
      debugPrint('Profile loaded : ' + pro.status.toString());
      return pro;
    } catch (e) {
      print(e);
    }
  }
}
