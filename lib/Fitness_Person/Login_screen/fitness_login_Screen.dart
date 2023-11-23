import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/ForgotPassword_screen/fitness_forgotpassword.dart';
import 'package:heathfit/Fitness_Person/Login_screen/fitness_second_login.dart';
import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessLoginScreen extends StatefulWidget {
  const FitnessLoginScreen({super.key});

  @override
  State<FitnessLoginScreen> createState() => _FitnessLoginScreenState();
}

class _FitnessLoginScreenState extends State<FitnessLoginScreen> {
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();

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
                      top: 366,
                      left: 50,
                      child: Text("A Succesful journey\n            "
                          " Awaits",
                        style: TextStyle(
                          color: kTitleColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 2.6*SizeConfigure.textMultiplier!,
                        ),))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
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
              padding: const EdgeInsets.only(left: 60, right: 60),
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
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessForgotpassword()));
              },
              child: AppText(text: "Forgot Password?",
                  color:kMainColor,
                  size: 1.3*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400),
            ),
            SizedBox(height: 35,),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessSecondLogin()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 27,right: 27,top: 10,bottom: 13),
                      child: AppText(
                        text: "Login ➤",
                        color: kButtonTextColor,
                        size: 1.5 * SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))





          ],
        ),
      ),
    );
  }
}