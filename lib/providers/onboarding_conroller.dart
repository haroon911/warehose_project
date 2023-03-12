import 'package:flutter/cupertino.dart';

class OnboardingController with ChangeNotifier {
  int currentPage = 0;
  void goToPage(int index) {
    currentPage = index;
    notifyListeners();
  }
}
