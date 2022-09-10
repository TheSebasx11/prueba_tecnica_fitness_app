import 'package:flutter/material.dart';

class TabProvider with ChangeNotifier {
  int selectedTab = 0;

  void changeTab(int i) {
    selectedTab = i;
    notifyListeners();
  }
}
