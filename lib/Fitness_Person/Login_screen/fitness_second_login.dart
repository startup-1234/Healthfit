import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/ForgotPassword_screen/fitness_forgotpassword.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/Fitness_name_screen.dart';
import 'package:heathfit/Widgets/app_text.dart';

import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessSecondLogin extends StatefulWidget {
  const FitnessSecondLogin({super.key});

  @override
  State<FitnessSecondLogin> createState() => _FitnessSecondLoginState();
}

class _FitnessSecondLoginState extends State<FitnessSecondLogin>  {
  bool isChecked = false;
  var visibility = true;

  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 460,
              width: 363,
              // color: Colors.grey,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/images/Fitness1.png',
                      height: 430,
                      width: 363,
                    ),
                  ),
                  Positioned(
                      top: 360,
                      left: 50,
                      child: Text("A Successful journey\n            "
                          " Awaits",
                        style: TextStyle(
                          color: kTitleColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 2.6*SizeConfigure.textMultiplier!,
                        ),))
                ],
              ),
            ),
            //... (previous code remains the same)

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:10,right: 180),
                  child: Text('Email', style: TextStyle(color: kMainColor,
                      fontSize: 1.5*SizeConfigure.textMultiplier!)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppText(text: "healthyfit@gmail.com",
                        color: kTitleColor,
                        size: 2.0*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w300,),
                      ),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.yellow; // Change the checkbox color to yellow when selected
                            }
                            return Colors.grey; // Change the checkbox color to grey when not selected
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 10,
                  color: kGreyTextColor,
                  indent: 60,
                  endIndent: 50,
                ),

                Padding(
                  padding: const EdgeInsets.only(top:10,right: 160),
                  child: Text('Password', style: TextStyle(color: kMainColor,
                      fontSize: 1.5*SizeConfigure.textMultiplier!)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 50,top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppText(text: "healthyfit@gmail.com",
                          color: kTitleColor,
                          size: 2.0*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w300,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(Icons.remove_red_eye,color: kGreyTextColor,),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 20,
                  color: kGreyTextColor,
                  indent: 60,
                  endIndent: 50,
                ),
              ],
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessForgotpassword()));
              },
              child: AppText(text: "Forgot Password?",
                  color:kMainColor,
                  size:1.8 *SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400),
            ),
            SizedBox(height: 20,),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessNameScreen()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 11,bottom: 11),
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
