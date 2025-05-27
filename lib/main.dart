import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce App',
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.white,
        fontFamily: "Roboto",
        colorScheme: ColorScheme.fromSeed(seedColor: Constant.orange),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}
