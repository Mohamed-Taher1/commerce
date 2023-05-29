import 'package:commerce/view/screens/cart.dart';
import 'package:commerce/view/screens/home_content.dart';
import 'package:flutter/material.dart';

import '../screens/favorive.dart';
import '../screens/profile.dart';

class HomeProvider extends ChangeNotifier {
  int currentNavIndex = 0;
  int catagoriesCurrentIndex = 0;
  List navPages = [
    const HomeContent(),
    favorite(),
    cart(),
    ProfileTab(),
  ];
  List navPagesTitles = [
    "All Categorie",
    "Favorite",
    "Cart",
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
}
