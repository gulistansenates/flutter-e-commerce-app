import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/view/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(const SignInPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(child: Image.asset(Assets.images.im_splash_png)),
    );
  }
}
