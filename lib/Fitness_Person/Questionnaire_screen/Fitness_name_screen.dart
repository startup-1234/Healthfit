import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_choose_location.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessNameScreen extends StatefulWidget {
  const FitnessNameScreen({super.key});

  @override
  State<FitnessNameScreen> createState() => _FitnessNameScreenState();
}

class _FitnessNameScreenState extends State<FitnessNameScreen> {
  final TextEditingController usernamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 180),
            Center(
              child: Text(
                "Your Name?",
                style: TextStyle(
                  fontSize:  2.2 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.bold,
                  color: kTitleColor,
                ),
              ),
            ),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
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
            const SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessChooseLocation()));
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
                          size:2.0 * SizeConfigure.textMultiplier!,
                          fw: FontWeight.w500,
                        ),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
