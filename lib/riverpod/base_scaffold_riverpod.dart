import 'package:e_commerce_app/assets.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/bottom_nav_bar_model.dart';
import 'package:e_commerce_app/view/account.dart';
import 'package:e_commerce_app/view/cart.dart';
import 'package:e_commerce_app/view/category.dart';
import 'package:e_commerce_app/view/home.dart';
import 'package:e_commerce_app/view/wishlist.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: Assets.icons.ic_bottom_home_svg, title: "Home"),
    BottomNavBarModel(
      image: Assets.icons.ic_bottom_save_svg,
      title: "Wishlist",
    ),
    BottomNavBarModel(
      image: Assets.icons.ic_bottom_categories_svg,
      title: "Category",
    ),
    BottomNavBarModel(
      image: Assets.icons.ic_bottom_profile_svg,
      title: "Account",
    ),
    BottomNavBarModel(image: Assets.icons.ic_bottom_cart_svg, title: "Cart"),
  ];
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return Wishlist();
      case 2:
        return Category();
      case 3:
        return Account();
      case 4:
        return Cart();
      default:
        return Home();
    }
  }
}
