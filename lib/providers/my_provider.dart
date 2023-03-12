import 'dart:ffi';

import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  String name = "hello";
  void changeNameTo(anyname) {
    name = anyname;
    notifyListeners();
  }
}

class Monther with ChangeNotifier {}
