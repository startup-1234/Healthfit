import 'package:flutter/material.dart';
import 'package:heathfit/User_person/forgotpassword/verification_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import '../login_page/login_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController phonecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));                  },
                  child: Container(
                      height: 4.5 * SizeConfigure.textMultiplier!,
                      width: 4.5 * SizeConfigure.textMultiplier!,
                      decoration: BoxDecoration(
                          color: Colors.grey[800], shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: kTitleColor,
                          size: 16,
                        ),
                      ))),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: kTitleColor,
                    fontSize: 2.8*SizeConfigure.textMultiplier!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 50),
              child: Text("Enter your registered mobile number\nbelow or login with other account",
              style: TextStyle(
                color: kTitleColor,
                fontSize: 1.5*SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.w300
              ),
              ),
            ),
            SizedBox(height: 190,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Mobile Number',
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
                      color: Colors.white ,
                      fontSize: 12// Change the hint text color to your desired color
                  ),
                ),
              ),
            ),
            SizedBox(height: 130,),
            InkWell(
                onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 13,bottom: 13),
                      child: AppText(
                        text: "Sent OTP ➤",
                        color: kButtonTextColor,
                        size: 1.7*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
