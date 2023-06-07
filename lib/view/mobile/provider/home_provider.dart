import 'package:commerce/view/mobile/screens/cart.dart';
import 'package:commerce/view/mobile/screens/home_content.dart';
import 'package:commerce/view/mobile/screens/settings_tab.dart';
import 'package:commerce/view/mobile/ui_models/product_container_2.dart';
import 'package:flutter/material.dart';

import '../screens/favorive.dart';
import '../screens/profile.dart';

class HomeProvider extends ChangeNotifier {
  int currentNavIndex = 0;
  int catagoriesCurrentIndex = 0;
  // bool isBookmarked = false;
  String? selectedItemId;
  List productModelTwoList = [
    productModleTwo(productId: "15243"),
    productModleTwo(productId: "15245"),
    productModleTwo(productId: "15253"),
    productModleTwo(productId: "112243"),
  ];
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

  // void addToFavorite(String itemId) {
  //   if (selectedItemId == itemId) {
  //     if (isBookmarked) {
  //       isBookmarked = !isBookmarked;
  //     } else {
  //       isBookmarked = true;
  //     }
  //     // isBookmarked = !isBookmarked;
  //   } else {
  //     isBookmarked = true;
  //     selectedItemId = itemId;
  //   }
  //   notifyListeners();
  // }
  Map<String, bool> _bookmarkedProducts = {};

  bool isBookmarked(String productId) {
    return _bookmarkedProducts[productId] ?? false;
  }

  void toggleBookmarkStatus(String productId) {
    if (_bookmarkedProducts.containsKey(productId)) {
      _bookmarkedProducts[productId] = !_bookmarkedProducts[productId]!;
    } else {
      _bookmarkedProducts[productId] = true;
    }
    notifyListeners();
  }
}
