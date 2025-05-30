// ignore_for_file: public_member_api_docs,constant_identifier_names,type=lint,unused_element,unused_field
import 'package:flutter/foundation.dart';

@immutable
final class Assets {
  Assets._();
  static final _Icons icons = _Icons._();
  static final _Images images = _Images._();
}

@immutable
final class _Icons {
  _Icons._();

  final String ic_bottom_cart_svg = 'assets/icons/ic_bottom_cart.svg';
  final String ic_bottom_categories_svg =
      'assets/icons/ic_bottom_categories.svg';
  final String ic_bottom_home_svg = 'assets/icons/ic_bottom_home.svg';
  final String ic_bottom_profile_svg = 'assets/icons/ic_bottom_profile.svg';
  final String ic_bottom_save_svg = 'assets/icons/ic_bottom_save.svg';
  final String ic_drawer_svg = 'assets/icons/ic_drawer.svg';
  final String ic_search_svg = 'assets/icons/ic_search.svg';
}

@immutable
final class _Images {
  _Images._();

  final String im_c1_png = 'assets/images/im_c1.png';
  final String im_campaigns_png = 'assets/images/im_campaigns.png';
  final String im_p1_png = 'assets/images/im_p1.png';
  final String im_p2_png = 'assets/images/im_p2.png';
  final String im_splash_png = 'assets/images/im_splash.png';
  final String im_w1_png = 'assets/images/im_w1.png';
  final String im_w2_png = 'assets/images/im_w2.png';
}
