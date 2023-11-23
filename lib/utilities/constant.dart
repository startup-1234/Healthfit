import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kMainColor = Color(0xffD0FD3E); //0xFF0D3B70
const kGreyTextColor = Color(0xff444444);
const kBorderColorTextField = Color(0xFFC2C2C2);
const kDarkWhite = Color(0xFFF1F7F7);
const kTitleColor = Color(0xFFffffff);
const kAlertColor = Color(0xFFFF8919);
const kBgColor = Color(0xFFFAFAFA);
const kHalfDay = Color(0xFFE8B500);
const kGreenColor = Color(0xFF08BC85);
const kRedColor = Color(0xFFE70A0A);
const kIconColor = Color(0xff494949FF);
const kButtonTextColor = Colors.black;

final kTextStyle = GoogleFonts.manrope(
  color: kTitleColor,
);

final kTextStyle2 = GoogleFonts.manrope(
  color: kDarkWhite,
);

final kTextStyle3 = GoogleFonts.manrope(
  color: kBorderColorTextField,
);

final kTextStyle4 = GoogleFonts.manrope(
  color: kGreyTextColor,
);


const kButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5.0,
      ),
    ]);

const kInputDecoration = InputDecoration(
  hintStyle: TextStyle(color: kBorderColorTextField),
  filled: true,
  fillColor: Colors.white70,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    borderSide: BorderSide(color: kBorderColorTextField, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6.0)),
    borderSide: BorderSide(color: kBorderColorTextField, width: 2),
  ),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
    borderSide: BorderSide(color: kMainColor.withOpacity(0.1)),
  );
}

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);