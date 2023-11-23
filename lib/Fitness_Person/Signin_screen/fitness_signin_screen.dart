import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Login_screen/fitness_login_Screen.dart';
import 'package:heathfit/Fitness_Person/Signin_screen/fitness_secondsignin_screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessSignInScreen extends StatefulWidget {
  const FitnessSignInScreen({super.key});

  @override
  State<FitnessSignInScreen> createState() => _FitnessSignInScreenState();
}

class _FitnessSignInScreenState extends State<FitnessSignInScreen>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 545,
              width: 351,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 82, left: 150),
                    child: Image.asset(
                      'assets/images/signimg1.png',
                      height: 128.6,
                      width: 100.97,
                    ),
                  ),
                  Positioned(
                      top: 105,
                      left: 53,
                      child: Image.asset(
                        'assets/images/signimg2.png',
                        height: 92.98,
                        width: 133.83,
                      )),
                  Positioned(
                      top: 220,
                      left: 100,
                      // left: 83,
                      child: Image.asset(
                        'assets/images/signimg4.png',
                        height: 128.6,
                        width: 100.97,
                      )),
                  Positioned(
                      top: 236,
                      left: 170,
                      child: Image.asset(
                        'assets/images/signimg3.png',
                        height: 90.98,
                        width: 133.83,
                      )),
                  Positioned(
                      top: 387,
                      left: 55,
                      child: AppText(
                        text: "More than Just a \n Fitness App",
                        color: kTitleColor,
                        size: 3.2 * SizeConfigure.textMultiplier!,
                        fw: FontWeight.bold,
                      )),
                  Positioned(
                      top: 490,
                      left: 30,
                      child: Text(
                        "Recommend diet plans, training methods, mentor\n"
                            "                       your clients and more...",
                        style: TextStyle(
                          color: kTitleColor,
                          // letterSpacing: 0.4,
                          fontSize: 1.2 * SizeConfigure.textMultiplier!,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessSecondSigninScreen()));
              },
              child: Container(
                  height: 45,
                  width: 280,
                  decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Icon(Icons.email_rounded,
                          size: 20,),
                      ),
                      SizedBox(width: 10,),
                      Text("Sign Up with Email",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),)
                    ],
                  )

              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {},
              child: Container(
                  height: 45,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child:  Image.asset(
                          'assets/images/googleimg.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Sign Up with Google",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: kTitleColor
                        ),)
                    ],
                  )

              ),
            ),
            SizedBox(height:25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                AppText(text:"Already have an account? ",
                  size: 12,
                  color: Colors.grey[800],),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessLoginScreen()));
                  },
                  child: AppText(text: "Log In",
                      color:kTitleColor,
                      size: 12,
                      fw: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
