import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utilities/constant.dart';
import '../utilities/sizeconfigure.dart';


// ignore: must_be_immutable
class ButtonGlobal extends StatelessWidget {
  final String buttontext;
  final Decoration buttonDecoration;

  // ignore: prefer_typing_uninitialized_variables
  var onPressed;

  // ignore: use_key_in_widget_constructors
  ButtonGlobal(
      {required this.buttontext,
        required this.buttonDecoration,
        required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 6.0 * SizeConfigure.heightMultiplier!,
        decoration: buttonDecoration,
        child: Center(
          child: Text(
            buttontext,
            style: kTextStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 1.8 * SizeConfigure.textMultiplier!),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonGlobalWithoutIcon extends StatelessWidget {
  final String buttontext;
  final Decoration buttonDecoration;

  // ignore: prefer_typing_uninitialized_variables
  var onPressed;
  final Color buttonTextColor;

  // ignore: use_key_in_widget_constructors
  ButtonGlobalWithoutIcon(
      {required this.buttontext,
        required this.buttonDecoration,
        required this.onPressed,
        required this.buttonTextColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 6.5.h,
        decoration: buttonDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttontext,
              style: kTextStyle.copyWith(
                  color: buttonTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
            ),
          ],
        ),
      ),
    );
  }
}