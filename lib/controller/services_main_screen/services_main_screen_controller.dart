import 'package:flutter/material.dart';
// import model

class ServicesMainScreenController extends ChangeNotifier {
  //page
  int page = 0;

  //change page
  void changePage(int page) {
    this.page = page;
    notifyListeners();
  }
}
