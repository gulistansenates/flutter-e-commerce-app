import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';
import 'package:e_commerce_app/assets.dart';
import 'package:e_commerce_app/constant/constant.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appbarTitle;

  const CustomAppbar({super.key, this.appbarTitle = "iDrip"});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbarTitle,
        style: const TextStyle(
          color: Constant.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Padding(
        padding: 12.allP,
        child: SvgPicture.asset(Assets.icons.ic_drawer_svg),
      ),
      actions: [
        Padding(
          padding: 12.allP,
          child: SvgPicture.asset(Assets.icons.ic_search_svg),
        ),
      ],
      backgroundColor: Constant.darkWhite,
      elevation: 0,
    );
  }
}
