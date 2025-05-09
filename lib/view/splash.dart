import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/view/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constant/constant.dart';
import 'package:grock/grock.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(child: Image.asset(Assets.images.im_splash_png)),
    );
  }
}
