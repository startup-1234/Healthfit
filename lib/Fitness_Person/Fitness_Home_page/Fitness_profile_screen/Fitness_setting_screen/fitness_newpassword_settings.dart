import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/Fitness_setting_screen/fitness_settings_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../../Widgets/app_text.dart';
import '../../../../utilities/sizeconfigure.dart';

class FitnessNewPasswordSettings extends StatefulWidget {
  const FitnessNewPasswordSettings({super.key});

  @override
  State<FitnessNewPasswordSettings> createState() => _FitnessNewPasswordSettingsState();
}

class _FitnessNewPasswordSettingsState extends State<FitnessNewPasswordSettings>  {
  TextEditingController newpasswordcontroller = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();

  Color buttonColor = kMainColor;

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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessNewPasswordSettings()));
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
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Image.asset("assets/images/security.png",
                    height: 3.6*SizeConfigure.textMultiplier!),
                SizedBox(width: 5,),
                Text('Enter New Password', style: TextStyle(color: kTitleColor,
                    fontSize: 2.3*SizeConfigure.textMultiplier!)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40,top: 40), // Reduced right padding
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !value.contains('@') ||
                    !value.contains('.')) {
                  return "Enter a Valid email";
                }
                return null;
              },
              controller: newpasswordcontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                hintText: '**********',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3a3737), // Change the border color to your desired color
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3a3737), // Change the border color to your desired color
                  ),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12, // Change the hint text color to your desired color
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Image.asset("assets/images/security.png",
                    height: 3.6*SizeConfigure.textMultiplier!),
                SizedBox(width: 5,),
                Text('Enter Re-Enter Password', style: TextStyle(color: kTitleColor,
                    fontSize: 2.3*SizeConfigure.textMultiplier!)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40,top: 40), // Reduced right padding
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !value.contains('@') ||
                    !value.contains('.')) {
                  return "Enter a Valid email";
                }
                return null;
              },
              controller: repasswordcontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                hintText: '**********',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3a3737), // Change the border color to your desired color
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3a3737), // Change the border color to your desired color
                  ),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12, // Change the hint text color to your desired color
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          InkWell(
              onTap: () {
                _showDietPlanRequestDialog();
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 15),
                    child: AppText(
                      text: "Save",
                      color: kButtonTextColor,
                      size: 12,
                      fw: FontWeight.w500,
                    ),
                  )))
        ],
      ),
    );
  }
  void _showDietPlanRequestDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kTitleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: AppText(
            text: "Succes",
            size: 2.2 * SizeConfigure.textMultiplier!,
            fw: FontWeight.w500,
            color: kButtonTextColor,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              SizedBox(height: 26,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppText(text: "Password updated successfully",
                  size:1.8*SizeConfigure.textMultiplier! ,
                  fw: FontWeight.w400,
                  color: kButtonTextColor,),
              ),
              SizedBox(height: 26,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessSettingScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kButtonTextColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 15),
                    child: AppText(
                      text: "Done",
                      color: kTitleColor,
                      size: 12,
                      fw: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
