import 'package:commerce/view/screens/cart.dart';
import 'package:commerce/view/screens/home_content.dart';
import 'package:commerce/view/screens/settings_tab.dart';
import 'package:flutter/material.dart';

import '../screens/favorive.dart';
import '../screens/profile.dart';

class HomeProvider extends ChangeNotifier {
  int currentNavIndex = 0;
  int catagoriesCurrentIndex = 0;
  bool isBookmarked = false;
  List navPages = [
    const HomeContent(),
    favorite(),
    cart(),
    SettingsTab(),
    ProfileTab(),
  ];
  List navPagesTitles = [
    "All Categories",
    "Favorite",
    "Cart",
    "Settings",
    "Profile",
  ];

  changeIndex(int index) {
    currentNavIndex = index;
    notifyListeners();
  }

  changecatagoriesCurrentIndex(int index) {
    catagoriesCurrentIndex = index;
    notifyListeners();
  }

  addToFavorite() {
    isBookmarked = !isBookmarked;
    notifyListeners();
  }
}
