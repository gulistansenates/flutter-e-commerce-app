import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:e_commerce_app/constant/constant.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Function onTap;
  String text;
  CustomButton({super.key, required this.onTap, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Constant.orange,
          shape: RoundedRectangleBorder(borderRadius: 10.allBR),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Constant.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
