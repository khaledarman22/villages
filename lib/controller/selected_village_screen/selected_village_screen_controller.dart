import 'package:flutter/material.dart';

class SelectedVillageScreenController extends ChangeNotifier {
  int imageIndex = 0;
  changeImage(int index) {
    imageIndex = index;
    notifyListeners();
  }
}
