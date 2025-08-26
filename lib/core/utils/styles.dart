import 'package:flutter/cupertino.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
  //  fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
     color: Color(0xFFFFFFFF),
  );
  static const textStyle23 = TextStyle(
    fontSize: 23,
      fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
    color: Color(0xFF0C0D0D),
  );
    static const textStyle13 = TextStyle(
      fontFamily: 'Cairo',
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: Color(0xFF4E5556),
  );
}

const TextStyle textStyle = TextStyle();
