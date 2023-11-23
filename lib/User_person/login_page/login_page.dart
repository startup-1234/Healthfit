import 'package:flutter/material.dart';
import 'package:heathfit/User_person/login_page/secondlogin_screen.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:heathfit/utilities/sizeconfigure.dart';

import '../../Widgets/app_text.dart';
import '../forgotpassword/forgotpassword_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // height: 460,
              // width: 363,
              // color: Colors.grey,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Fitness1.png',
                    height: 60.0*SizeConfigure.heightMultiplier!,
                    width: 363,
                  ),
                  Positioned(
                    top: 360,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "A Stronger, Healthier You\n Awaits",
                        style: TextStyle(
                          color: kTitleColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 3.0 * SizeConfigure.textMultiplier!,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )

            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !value.contains('@') ||
                      !value.contains('.')) {
                    return "Enter a Valid email";
                  }
                },
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Email',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff3a3737)// Change the border color to your desired color
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff3a3737) // Change the border color to your desired color
                    ),
                  ),

                  hintStyle: TextStyle(
                      color: Colors.grey ,
                    fontSize: 12// Change the hint text color to your desired color
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value != passwordcontroller.text) {
                    return "Enter  password does not match";
                  }

                  else
                    return null;
                },
                controller: passwordcontroller,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Password',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff3a3737), // Change the border color to your desired color
                    ),
                  ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xff3a3737) // Change the border color to your desired color
                      ),
                    ),

                  hintStyle: TextStyle(
                      color: Colors.grey ,
                    fontSize: 12// Change the hint text color to your desired color
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
              },
              child: AppText(text: "Forgot Password?",
                  color:kMainColor,
                  size: 1.8 *SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400),
            ),
            SizedBox(height: 45,),
            InkWell(
                onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondLoginScreen()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 13,bottom: 13),
                      child: AppText(
                        text: "Login ➤",
                        color: kButtonTextColor,
                        size: 2.0 * SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))





          ],
        ),
      ),
    );
  }
}
