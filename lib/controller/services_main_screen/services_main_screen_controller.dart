import 'package:flutter/material.dart';
// import model

class ServicesMainScreenController extends ChangeNotifier {
  ServicesMainScreenController._() {
    //add listenter to change state on change page
  }
  static final ServicesMainScreenController _instance =
      ServicesMainScreenController._();
  static get instance => _instance;
  //page
  int page = 0;

  //change page
  void changePage(int page) {
    this.page = page;
    notifyListeners();
  }
}
