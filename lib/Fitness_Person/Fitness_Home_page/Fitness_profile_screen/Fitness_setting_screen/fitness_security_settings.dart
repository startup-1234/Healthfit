import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/Fitness_setting_screen/fitness_password_Settings.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/Fitness_setting_screen/fitness_settings_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../../Widgets/app_text.dart';
import '../../../../utilities/sizeconfigure.dart';

class FitnessSecuritySettings extends StatefulWidget {
  const FitnessSecuritySettings({super.key});

  @override
  State<FitnessSecuritySettings> createState() => _FitnessSecuritySettingsState();
}

class _FitnessSecuritySettingsState extends State<FitnessSecuritySettings>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessSettingScreen()));
                    },
                    child: Container(
                        height: 4.5 * SizeConfigure.textMultiplier!,
                        width: 4.5 * SizeConfigure.textMultiplier!,
                        decoration: BoxDecoration(
                            color: Colors.grey[800],
                            shape: BoxShape.circle),
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
                width: 80,
              ),
              AppText(
                text: "Settings",
                size: 2.8 * SizeConfigure.textMultiplier!,
                fw: FontWeight.bold,
                color: kTitleColor,
              ),
            ],
          ),
          SizedBox(height: 60),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 45),
            decoration: BoxDecoration(
                color: Color(0xff1e1e1e),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Icon(Icons.privacy_tip,
                    color: Color(0xffFF9595),),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:30 ),
                        child: AppText(
                          text: "Verify your email",
                          size: 2.0*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,
                          color: kTitleColor,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20,top: 5),
                        child: AppText(
                          text: "For Added Security",
                          size: 1.9*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,
                          color: kGreyTextColor,),
                      ),
                    ],
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessPasswordSettings()));
              },
              child: Row(
                children: [
                  Image.asset("assets/images/security.png",
                      height: 3.6*SizeConfigure.textMultiplier!),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: AppText(text: "Password",
                          color: kTitleColor,
                          size: 2.0*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: AppText(text: "**********",
                          color: Colors.grey,
                          size: 2.0*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,),
                      ),
                    ],
                  ),
                  SizedBox(width: 46,),
                  Icon(Icons.arrow_forward_ios,color: kTitleColor,size: 2.4*SizeConfigure.textMultiplier!,),

                ],
              ),
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
        ],
      ),
    );
  }
}
