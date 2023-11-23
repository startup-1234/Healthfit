import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/ForgotPassword_screen/fitness_forgotpassword.dart';
import 'package:heathfit/Fitness_Person/ForgotPassword_screen/fitness_newpassword_screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessVerification extends StatefulWidget {
  const FitnessVerification({super.key});

  @override
  State<FitnessVerification> createState() => _FitnessVerificationState();
}

class _FitnessVerificationState extends State<FitnessVerification> {
  TextEditingController otpcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body:Container(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child:  InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessForgotpassword()));                  },
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
                          size: 16,
                        ),
                      ))),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text(
                'Verification',
                style: TextStyle(color: kTitleColor, fontSize: 3.5*SizeConfigure.textMultiplier!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 70),
              child: Text("Check your SMS, We have sent the\nOTP to your registered mobile",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.w200
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
                    return "Enter a valid OTP";
                  }
                  else if (value.length < 10 || value.length > 10) {
                    return "phone must be 6 character";
                  }
                  else
                    return null;
                },
                controller: otpcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Verify OTP',
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessNewpasswordScreen()));
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
                        size: 1.8*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))
          ],
        ),
      ) ,
    );
  }
}