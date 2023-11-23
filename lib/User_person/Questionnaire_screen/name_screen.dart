import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import 'decide_screen.dart';
import 'gender_screen.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  final TextEditingController usernamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: 25.0 *SizeConfigure.heightMultiplier!,),
            Center(
              child: Text(
                "Your Name?",
                style: TextStyle(
                  fontSize:  3.0 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.bold,
                  color: kTitleColor,
                ),
              ),
            ),
            SizedBox(height:10.0 *SizeConfigure.heightMultiplier!,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a valid username";
                  }
                  else
                    return null;
                },
                controller: usernamecontroller,
                style: TextStyle(  // Set the text color here
                  color: kTitleColor,
                  fontWeight: FontWeight.w300,
                  // Change the text color to blue (or any color you prefer)
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 13, horizontal: 13),
                    isDense: true,
                    filled: true,
                    hintStyle: TextStyle(color: kTitleColor,),

                  enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(
                          Radius.circular(30)),
                      borderSide: const BorderSide(
                          width: 1,
                          color: kMainColor)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(
                          Radius.circular(30)),
                      borderSide: const BorderSide(
                          width: 1, color: kMainColor)),

                ),
              ),
            ),
            SizedBox(height: 18.0 *SizeConfigure.heightMultiplier!,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DecideScreen()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: kGreyTextColor,
                            shape: BoxShape.circle
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.arrow_back,color: kTitleColor,),
                        )
                    )),
                 SizedBox(
                  width: 42.0 *SizeConfigure.widthMultiplier!,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GenderScreen()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                           color: kMainColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
                          child: AppText(
                            text: "Next ➤",
                            color: kButtonTextColor,
                            size:1.8 * SizeConfigure.textMultiplier!,
                            fw: FontWeight.w500,
                          ),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
