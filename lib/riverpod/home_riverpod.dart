import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/model/home_products_model.dart';
import 'package:e_commerce_app/model/product.dart';
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

  HomeProductsModel hotDeals = HomeProductsModel(
    categoryTitle: "Hot Deals",
    products: [
      Product(
        image: Assets.images.im_c1_png,
        title: "apple iMac 24 (2021)",
        price: 1299,
        star: 4.9,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false,
      ),
      Product(
        image: Assets.images.im_w1_png,
        title: "Apple Watch V1",
        price: 859,
        star: 4.7,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: true,
      ),
      Product(
        image: Assets.images.im_p1_png,
        title: "Apple iPhone 12 Series",
        price: 1199,
        star: 5.0,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false,
      ),
    ],
  );

  HomeProductsModel mostPopular = HomeProductsModel(
    categoryTitle: "Most Popular",
    products: [
      Product(
        image: Assets.images.im_w2_png,
        title: "Apple Watch V2",
        price: 1099,
        star: 4.9,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false,
      ),
      Product(
        image: Assets.images.im_p2_png,
        title: "Apple iPhone 13 Pro Max",
        price: 1499,
        star: 5.0,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: true,
      ),
      Product(
        image: Assets.images.im_c1_png,
        title: "apple iMac 30 (2018)",
        price: 1000,
        star: 4.4,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: true,
      ),
    ],
  );
}
