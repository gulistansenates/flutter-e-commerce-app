import 'package:e_commerce_app/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.im_campaigns_png,
    Assets.images.im_campaigns_png,
    Assets.images.im_campaigns_png,
  ];

  int campaignsCurrentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }
}
