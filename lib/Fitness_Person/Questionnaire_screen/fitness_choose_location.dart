import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_gender_screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessChooseLocation extends StatefulWidget {
  const FitnessChooseLocation({super.key});

  @override
  State<FitnessChooseLocation> createState() => _FitnessChooseLocationState();
}

class _FitnessChooseLocationState extends State<FitnessChooseLocation> {
  final TextEditingController locationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Center(
              child: Text(
                "Choose your fitness Centre/\n                Your Location",
                style: TextStyle(
                  fontSize:  2.8 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.w500,
                  color: kTitleColor,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a valid location";
                  }
                  else
                    return null;
                },
                controller: locationcontroller,
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
                  hintText: '                 Myfit Calicut',
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
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Icon(Icons.location_on,color: kTitleColor,),
                  SizedBox(width: 15,),
                  AppText(text: "Myfit, Thalassery,Kannur",
                  size: 2.0*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w300,
                    color: kTitleColor,)
                ],
              ),
            ),
            Divider(
              height: 30,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: kGreyTextColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Icon(Icons.location_on,color: kTitleColor,),
                  SizedBox(width: 15,),
                  AppText(text: "Health club, Manjeri, Malappuram",
                    size: 2.0*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w300,
                    color: kTitleColor,)
                ],
              ),
            ),
            Divider(
              height: 30,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: kGreyTextColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Icon(Icons.location_on,color: kTitleColor,),
                  SizedBox(width: 15,),
                  AppText(text: "Healthygym, Pankkad, Malappuram",
                    size: 2.0*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w300,
                    color: kTitleColor,)
                ],
              ),
            ),
            Divider(
              height: 30,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: kGreyTextColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Icon(Icons.location_on,color: kTitleColor,),
                  SizedBox(width: 15,),
                  AppText(text: "Myfit, Perinthalmanna, Malappuarm",
                    size: 2.0*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w300,
                    color: kTitleColor,)
                ],
              ),
            ),
            Divider(
              height: 30,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: kGreyTextColor,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessGenderScreen()));
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