import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_experience_screen.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_specialisation_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessCertifiedScreen extends StatefulWidget {
  const FitnessCertifiedScreen({super.key});

  @override
  State<FitnessCertifiedScreen> createState() => _FitnessCertifiedScreenState();
}

class _FitnessCertifiedScreenState extends State<FitnessCertifiedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(
            child: Text(
              "Are You A Certified\n   Fitness Trainer",
              style: TextStyle(
                fontSize: 2.9 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff1A1A1A),
                        borderRadius: BorderRadius.all(Radius.circular(70))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                      child: Icon(Icons.check,
                      color: kMainColor,
                      size: 50,)
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff1A1A1A),
                        borderRadius: BorderRadius.all(Radius.circular(70))
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                        child: Icon(Icons.close,
                          color: Color(0xffFF4F4F),
                          size: 50,)
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 80,),
          AppText(text: "Upload Certificates/Documents",
          size: 2.1*SizeConfigure.textMultiplier!,
          fw: FontWeight.w400,
          color: kTitleColor,),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff1A1A1A),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 80,right: 80,top: 10,bottom: 10),
              child: AppText(text: "Upload",
                size: 2.1*SizeConfigure.textMultiplier!,
                fw: FontWeight.w400,
                color: kMainColor,),
            ),
          ),
          SizedBox(height: 140,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessExperienceScreen()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          shape: BoxShape.circle
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_back,color: kTitleColor,),
                      )
                  )),
              const SizedBox(
                width: 150,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessSpecialiseScreen()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
                        child: Center(
                            child: AppText(
                              text: "Next ➤",
                              color: kButtonTextColor,
                              size: 12,
                              fw: FontWeight.w500,
                            )),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
