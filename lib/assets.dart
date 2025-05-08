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

  final ic_drawer_svg = 'assets/icons/ic_drawer.svg';
  final ic_search_svg = 'assets/icons/ic_search.svg';
}

@immutable
final class _Images {
  _Images._();

  final im_splash_png = 'assets/images/im_splash.png';
}
