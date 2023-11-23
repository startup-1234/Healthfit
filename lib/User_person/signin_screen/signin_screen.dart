import 'package:flutter/material.dart';
import 'package:heathfit/User_person/signin_screen/secondsignin_screen.dart';
import 'package:heathfit/Widgets/app_text.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:heathfit/utilities/sizeconfigure.dart';

import '../login_page/login_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.50,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 82, left: 150),
                  child: Image.asset(
                    'assets/images/signimg1.png',
                    height: 18.0*SizeConfigure.heightMultiplier!,
                    width: 27.6*SizeConfigure.widthMultiplier!,
                  ),
                ),
                Positioned(
                    top: 105,
                    left: 53,
                    child: Image.asset(
                      'assets/images/signimg2.png',
                      height:13.0*SizeConfigure.heightMultiplier!,
                      width: 37.0*SizeConfigure.widthMultiplier!,
                    )),
                Positioned(
                    top: 220,
                    left: 100,
                    // left: 83,
                    child: Image.asset(
                      'assets/images/signimg4.png',
                      height: 18.0*SizeConfigure.heightMultiplier!,
                      width: 27.6*SizeConfigure.widthMultiplier!,
                    )),
                Positioned(
                    top: 236,
                    left: 170,
                    child: Image.asset(
                      'assets/images/signimg3.png',
                      height:12.8*SizeConfigure.heightMultiplier!,
                      width: 37.0*SizeConfigure.widthMultiplier!,
                    )),

              ],
            ),
          ),
          SizedBox(height: 4.6*SizeConfigure.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "More than Just a \n Fitness App",
                color: kTitleColor,
                size: 4.0 * SizeConfigure.textMultiplier!,
                fw: FontWeight.bold,
              ),
            ],
          ),
           SizedBox(height: 4.0*SizeConfigure.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Everything you need to stay healthy, Fitness Trainers,\n"
                    "         Nutritionists, Diet Plans, Food and More..",
                overflow: TextOverflow.ellipsis,
                style: kTextStyle.copyWith(
                  color: Colors.grey,
                  letterSpacing: 0.4,
                  fontSize: 1.6 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.6*SizeConfigure.heightMultiplier!,),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SecondSignInScreen()));
            },
            child: Container(
              height:  6.3*SizeConfigure.heightMultiplier!,
              width: 39.0*SizeConfigure.heightMultiplier!,
              decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Icon(Icons.email_rounded,
                    size: 2.7*SizeConfigure.textMultiplier!,),
                  ),
                  SizedBox(width: 1.5*SizeConfigure.heightMultiplier!,),
                  Text("Sign Up with Email",
                  style: TextStyle(
                    fontSize: 1.8*SizeConfigure.heightMultiplier!,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              )

            ),
          ),
          SizedBox(height: 1.5*SizeConfigure.heightMultiplier!,),
          InkWell(
            onTap: () {},
            child: Container(
                height:  6.3*SizeConfigure.heightMultiplier!,
                width: 39.0*SizeConfigure.heightMultiplier!,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 9.0*SizeConfigure.heightMultiplier!,),
                      child:  Image.asset(
                        'assets/images/googleimg.png',
                        height: 5.0*SizeConfigure.imageSizeMultiplier!,
                      ),
                    ),
                    SizedBox(width:  1.5*SizeConfigure.heightMultiplier!,),
                    Text("Sign Up with Google",
                      style: TextStyle(
                          fontSize: 1.8*SizeConfigure.heightMultiplier!,
                          fontWeight: FontWeight.w500,
                        color: kTitleColor
                      ),)
                  ],
                )

            ),
          ),
          SizedBox(height:3.0*SizeConfigure.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(text:"Already have an account? ",
              size: 2.0*SizeConfigure.heightMultiplier!,
              color: Colors.grey[800],),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: AppText(text: "Log In",
                    color:kTitleColor,
                    size: 2.0*SizeConfigure.heightMultiplier!,
                    fw: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
