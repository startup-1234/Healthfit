import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/Fitness_setting_screen/fitness_security_settings.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/fitness_profile_setting_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';

class FitnessHelpScreen extends StatefulWidget {
  const FitnessHelpScreen({super.key});

  @override
  State<FitnessHelpScreen> createState() => _FitnessHelpScreenState();
}

class _FitnessHelpScreenState extends State<FitnessHelpScreen>{
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FitnessProfile()));
                    },
                    child: Container(
                        height: 4.5 * SizeConfigure.textMultiplier!,
                        width: 4.5 * SizeConfigure.textMultiplier!,
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
                width: 80,
              ),
              AppText(
                text: "Help",
                size: 2.8 * SizeConfigure.textMultiplier!,
                fw: FontWeight.bold,
                color: kTitleColor,
              ),
            ],
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: AppText(
              text: "FAQ’s",
              size: 2.7 * SizeConfigure.textMultiplier!,
              fw: FontWeight.w500,
              color: kMainColor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to request diet from fitness coach ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to change password ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 110,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to order food ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 155,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to request diet from nutritionist ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 45,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "My diet plan is not yet approved",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 82,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: AppText(
              text: "Contact us",
              size: 2.7 * SizeConfigure.textMultiplier!,
              fw: FontWeight.w500,
              color: kMainColor,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FitnessSecuritySettings()));
              },
              child: Row(
                children: [
                  Column(
                    children: [
                      AppText(
                        text: "My diet plan is not yet approved",
                        color: kTitleColor,
                        size: 1.9 * SizeConfigure.textMultiplier!,
                        fw: FontWeight.w400,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, top: 10),
                        child: AppText(
                          text: "24/7 Request a call back",
                          color: Colors.grey,
                          size: 1.8 * SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 82,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kTitleColor,
                    size: 2.4 * SizeConfigure.textMultiplier!,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
        ],
      ),
    );
  }
}
