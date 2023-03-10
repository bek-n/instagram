import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  Style._();

  // ---------- Color   ---------- //

  static const primaryColor = Color(0xff1FA1FF);
  static const linkColor = Color(0xff004C8B);
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const darkBgcolorOfApp = Color(0xff090A11);
  static const lightBgcolorOfApp = Color(0xffFAFAFD);
  static const greyColor65 = Color(0xffF2F2F3);
  static const greyColor90 = Color(0xff95969D);
  static const navBgcolorOfApp = Color(0xff121421);
  // ---------- Gradient   ---------- //

  static const linearGradient = LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [
        Color(0xffC913B9),
        Color(0xffF9373F),
        Color(0xffFECD00),
      ]);

  static const primaryDisabledColor = Color.fromARGB(255, 132, 250, 193);

  static textStyleRegular({
    double size = 18,
    Color textColor = blackColor,
  }) =>
      GoogleFonts.poppins(
          fontWeight: FontWeight.w600, color: textColor, fontSize: size);

  static textStyleRegular2({
    double size = 16,
    Color textColor = blackColor,
  }) =>
      GoogleFonts.poppins(
          fontWeight: FontWeight.w600, color: textColor, fontSize: size);
}
