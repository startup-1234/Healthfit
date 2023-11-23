import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heathfit/User_person/signin_screen/signin_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import 'otp_screen.dart';

class SecondSignInScreen extends StatefulWidget {
  const SecondSignInScreen({super.key});

  @override
  State<SecondSignInScreen> createState() => _SecondSignInScreenState();
}

class _SecondSignInScreenState extends State<SecondSignInScreen> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 280,left: 35),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen()));                  },
                            child: Container(
                                height: 5.5 * SizeConfigure.textMultiplier!,
                                width: 5.5 * SizeConfigure.textMultiplier!,
                                decoration: BoxDecoration(
                                    color: Colors.grey[800], shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: kTitleColor,
                                    size: 2.2*SizeConfigure.textMultiplier!,
                                  ),
                                ))),
                      ),
                      Image.asset(
                        'assets/images/signimg5.png',
                        height: 56.6* SizeConfigure.textMultiplier!,
                        width: 28* SizeConfigure.textMultiplier!,
                      ),
                    ],
                  ),
                  Positioned(
                      top: 360,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("One Step Closer\n"
                            "  To Your Goals",
                          style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.8*SizeConfigure.textMultiplier!,
                          ),),
                      ))
                ],
              ),
            ),
            SizedBox(height: 2.8*SizeConfigure.heightMultiplier!,),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text('Email',
                  style: TextStyle(
                      color: kMainColor,
                      fontSize: 1.6* SizeConfigure.textMultiplier!)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 20), // Reduced right padding
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !value.contains('@') ||
                      !value.contains('.')) {
                    return "Enter a Valid email";
                  }
                  return null;
                },
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'example@gmail.com',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff3a3737), // Change the border color to your desired color
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff3a3737), // Change the border color to your desired color
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12, // Change the hint text color to your desired color
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,right: 180),
              child: Text('Mobile',
                  style: TextStyle(
                      color: kMainColor,
                      fontSize: 1.6* SizeConfigure.textMultiplier!)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 20), // Reduced right padding
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a valid phone number";
                  }
                  else if (value.length < 10 || value.length > 10) {
                    return "phone must be 10 character";
                  }
                  else
                    return null;
                },
                controller: phonecontroller,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  hintText: '+91 999 999 9999',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff3a3737), // Change the border color to your desired color
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff3a3737), // Change the border color to your desired color
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12, // Change the hint text color to your desired color
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,right: 160),
              child: Text('Password',
                  style: TextStyle(
                      color: kMainColor,
                      fontSize: 1.6* SizeConfigure.textMultiplier!)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 20), // Reduced right padding
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a password";
                  }
                  else if (value.length < 10 || value.length > 10) {
                    return "password must be 6 character";
                  }
                  else
                    return null;
                },
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: '**********',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff3a3737), // Change the border color to your desired color
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff3a3737), // Change the border color to your desired color
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12, // Change the hint text color to your desired color
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.8* SizeConfigure.textMultiplier!,),
            InkWell(
                onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 13,bottom: 13),
                      child: AppText(
                        text: "Sign Up ➤",
                        color: kButtonTextColor,
                        size: 1.8*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
