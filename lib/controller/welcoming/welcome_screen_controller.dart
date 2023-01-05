import 'package:flutter/material.dart';

class WelcomeScreenController extends ChangeNotifier {
  WelcomeScreenController() {
    pageCtrl = PageController(initialPage: 0)
      ..addListener(() {
        page = pageCtrl?.page?.toInt();
        notifyListeners();
      });
  }
  PageController? pageCtrl;
  int? page = 0;
  changePage() {
    page = page! + 1;
    pageCtrl?.animateToPage(
      page!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linearToEaseOut,
    );
    notifyListeners();
  }
}
