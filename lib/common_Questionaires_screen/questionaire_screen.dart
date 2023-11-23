import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Onboarding_screen/fitness_onboarding_screen.dart';
import 'package:heathfit/Widgets/app_text.dart';
import '../Nutritionist_person/Nutrition_Onboarding_screen/nutrition_onboarding_screen.dart';
import '../utilities/constant.dart';
import '../utilities/sizeconfigure.dart';

class CommonQuestionaireScreen extends StatefulWidget {
  const CommonQuestionaireScreen({Key? key}) : super(key: key);

  @override
  State<CommonQuestionaireScreen> createState() => _CommonQuestionaireScreenState();
}

class _CommonQuestionaireScreenState extends State<CommonQuestionaireScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 160,),
            Text(
              "You are a,",
              style: TextStyle(
                fontSize: 2.9 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
            SizedBox(height: 80),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessOnboardingScreen()));
              },
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Color(0xff1A1A1A),
                  borderRadius: BorderRadius.all(Radius.circular(70))
                ),
                child: Center(
                  child: AppText(text: "Fitness\nTrainer",
                  size: 1.6*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,
                  color: kTitleColor,),
                ),
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NutritionOnboardingScreen()));
              },
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    color: Color(0xff1A1A1A),
                    borderRadius: BorderRadius.all(Radius.circular(70))
                ),
                child: Center(
                  child: AppText(text: "Nutritionist",
                    size: 1.7*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kTitleColor,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
