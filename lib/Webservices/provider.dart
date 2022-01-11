import 'package:flutter/cupertino.dart';
import 'package:tap/Models/categories.dart';
import 'package:tap/Models/profile.dart';
import 'package:tap/Webservices/api_calls.dart';

class CategoryProvider with ChangeNotifier {
  Categories fmodel;
  PaidProfile pro;

  getCategories() async {
    fmodel = await WebServices().getCategories();
    notifyListeners();
    return fmodel;
  }

  getPaidProfile() async {
    pro = await WebServices().getPaidProfile();
    notifyListeners();
    return pro;
  }
}
