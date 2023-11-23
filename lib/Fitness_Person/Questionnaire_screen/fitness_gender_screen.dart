import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_age_picker.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_choose_location.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessGenderScreen extends StatefulWidget {
  const FitnessGenderScreen({super.key});

  @override
  State<FitnessGenderScreen> createState() => _FitnessGenderScreenState();
}

class _FitnessGenderScreenState extends State<FitnessGenderScreen> {
  Color maleColor = Colors.grey[800]!;
  Color femaleColor = Colors.grey[800]!;
  Color othersColor = Colors.grey[800]!;

  void selectMale() {
    setState(() {
      maleColor = kGreyTextColor;
      femaleColor = Colors.grey[800]!;
      othersColor = Colors.grey[800]!;
    });
  }

  void selectFemale() {
    setState(() {
      maleColor = Colors.grey[800]!;
      femaleColor =kGreyTextColor;
      othersColor = Colors.grey[800]!;
    });
  }

  void selectOthers() {
    setState(() {
      maleColor = Colors.grey[800]!;
      femaleColor = Colors.grey[800]!;
      othersColor = kGreyTextColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          const SizedBox(height: 110),
          Center(
            child: Text(
              "Gender?",
              style: TextStyle(
                fontSize: 2.9 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              genderOption(
                icon: Icons.male,
                label: 'Male',
                color: maleColor,
                onPressed: selectMale,
              ),
              SizedBox(
                height: 25,
              ),
              genderOption(
                icon: Icons.female,
                label: 'Female',
                color: femaleColor,
                onPressed: selectFemale,
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: genderOption(
                  label: 'Others',
                  color: othersColor,
                  onPressed: selectOthers,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessChooseLocation()));
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessAgePicker()));
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
                          )))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget genderOption(
      {IconData? icon,
        required String label,
        required Color color,
        required void Function() onPressed}) {
    return Container(
      width: 15.0 * SizeConfigure.textMultiplier!,
      height: 15.0 * SizeConfigure.textMultiplier!,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 65,
              color: kTitleColor,

            ),
            SizedBox(width: 8),
            Align(
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 1.8 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.w400,
                  color: kTitleColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
