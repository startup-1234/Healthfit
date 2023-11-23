import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import '../forgotpassword/verification_screen.dart';
import 'login_page.dart';


class NewPassWordScreen extends StatefulWidget {
  const NewPassWordScreen({super.key});

  @override
  State<NewPassWordScreen> createState() => _NewPassWordScreenState();
}

class _NewPassWordScreenState extends State<NewPassWordScreen> {
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController repasswordcontroller=TextEditingController();
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
              padding: const EdgeInsets.only(right: 220),
              child:InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerificationScreen()));                  },
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
              padding: const EdgeInsets.only(right: 130),
              child: Text(
                'Create New\nPassword',
                style: TextStyle(color: kTitleColor, fontSize: 3.5*SizeConfigure.textMultiplier!),
              ),
            ),
            SizedBox(height: 170,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
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
                controller: passwordcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'New Password',
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
            SizedBox(height: 19,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value !=passwordcontroller.text) {
                    return "password mismatch";
                  }
                  else
                    return null;
                },
                controller: repasswordcontroller,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Re-Enter Password',
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 13,bottom: 13),
                      child: AppText(
                        text: "Submit ➤",
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
