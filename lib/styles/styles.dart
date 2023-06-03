import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFBC962B);
const Color secondaryColor = Color(0xFFD4B146);
const Color secondaryLight = Color(0xFFE6C86F);
const Color blackColor = Color(0xFF000000);
const Color whiteColor = Color(0xFFFFFFFF);

class AppStyles {
  static const textStyle28_black =
      TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: blackColor);

  static const textStyle24 =
      TextStyle(fontSize: 24, color: primaryColor, fontWeight: FontWeight.bold);
  static const textStyle24_black =
      TextStyle(fontSize: 24, color: blackColor, fontWeight: FontWeight.bold);

  static const textStyle20 =
      TextStyle(fontSize: 20, color: primaryColor, fontWeight: FontWeight.bold);
  static const textStyle20_black =
      TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
  static const textSyle20_underline = TextStyle(
      fontSize: 20,
      decoration: TextDecoration.underline,
      color: Color(0xFFBC962B),
      fontWeight: FontWeight.bold);

  static const textStyle18 = TextStyle(
    fontSize: 18,
    color: primaryColor,
    fontWeight: FontWeight.bold,
  );

  static const textStyle18_black = TextStyle(
    fontSize: 18,
    color: blackColor,
    fontWeight: FontWeight.bold,
  );

  static const textStyle18_underline = TextStyle(
    fontSize: 18,
    color: primaryColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );
  static const textStyles16_black = TextStyle(
    fontSize: 16,
    color: blackColor,
    fontWeight: FontWeight.bold,
  );

  static const textStyles14 = TextStyle(
    fontSize: 14,
    color: primaryColor,
    fontWeight: FontWeight.bold,
  );
  static const textStyles14_black = TextStyle(
    fontSize: 14,
    color: blackColor,
    fontWeight: FontWeight.bold,
  );
  static const textStyle12 =
      TextStyle(fontSize: 12, color: primaryColor, fontWeight: FontWeight.bold);
  static const textStyle12_black =
      TextStyle(fontSize: 12, color: blackColor, fontWeight: FontWeight.bold);
  static const textStyle12_white =
      TextStyle(fontSize: 12, color: whiteColor, fontWeight: FontWeight.bold);
}
