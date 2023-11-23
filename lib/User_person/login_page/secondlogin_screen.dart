import 'package:flutter/material.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';
import '../BottomNavBar/mainscreen.dart';
import '../forgotpassword/forgotpassword_screen.dart';

class SecondLoginScreen extends StatefulWidget {
  const SecondLoginScreen({super.key});

  @override
  State<SecondLoginScreen> createState() => _SecondLoginScreenState();
}

class _SecondLoginScreenState extends State<SecondLoginScreen> {
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
            SizedBox(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Fitness1.png',
                    height: 430,
                    width: 363,
                  ),
                  Positioned(
                      top: 360,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("A Stronger, Healthier You\n                 "
                            " Awaits",
                          style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 3.0*SizeConfigure.textMultiplier!,
                          ),),
                      ))
                ],
              ),
            ),
            //... (previous code remains the same)

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:30,right: 200),
                  child: Text('Email', style: TextStyle(color: kMainColor,
                      fontSize: 1.5*SizeConfigure.textMultiplier!)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppText(text: "healthyfit@gmail.com",
                          color: kTitleColor,
                          size: 1.8*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,),
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
                  padding: const EdgeInsets.only(top:10,right: 190),
                  child: Text('Password', style: TextStyle(color: kMainColor,
                      fontSize: 1.5*SizeConfigure.textMultiplier!)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 65,top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppText(text: "HEALTH@123",
                          color: kTitleColor,
                          size: 1.8*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,),
                      ),
                      SizedBox(width: 60,),
                      Icon(Icons.remove_red_eye,color: kGreyTextColor,)
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
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
              },
              child: AppText(text: "Forgot Password?",
                  color:kMainColor,
                  size:1.8 *SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400),
            ),
            SizedBox(height: 25,),
            InkWell(
                onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
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
