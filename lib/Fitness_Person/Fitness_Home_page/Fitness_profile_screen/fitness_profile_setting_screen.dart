import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/Fitness_setting_screen/fitness_settings_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';

class FitnessProfileSetting extends StatefulWidget {var pass_index;
var image;
var name;
var phone;
var email;

 FitnessProfileSetting({super.key,required this.name,
    required this.phone,
    required this.email,
    required this.image,
    required this.pass_index});

  @override
  State<FitnessProfileSetting> createState() => _FitnessProfileSettingState();
}

class _FitnessProfileSettingState extends State<FitnessProfileSetting>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(height: 40,),
              Stack(
                children: [
                  Image.asset("assets/images/profileimg.png"),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 33,
                      height: 32,
                      decoration: BoxDecoration(
                        color: kGreyTextColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.camera_alt,
                              color: kTitleColor,
                              size: 19,
                            ),
                          )),
                    ),)
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 60,
                indent: 30,
                endIndent: 30,
              ),
              InkWell(
                onTap: ()async {
                  bool shouldExit = await _showCustomAlertDialog(context);
                  if (shouldExit) {
                    // Perform the action you want when the user confirms the alert
                    // For example, exiting the app
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessProfileSetting(name: '', phone: '', email: '', image: '', pass_index: '',)));
                  }
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 260),
                      child: AppText(
                        text: "Name",
                        size: 1.4*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w400,
                        color: kMainColor,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 220,top: 5),
                      child: AppText(
                        text: '${widget.name}',
                        size: 2.0*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                        color: kTitleColor,),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: AppText(
                      text: "Email",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150,top: 5),
                    child: AppText(
                      text: '${widget.email}',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 230),
                    child: AppText(
                      text: "Phone Number",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190,top: 5),
                    child: AppText(
                      text: '${widget.phone}',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: AppText(text: "Personal Details",
                  color: kGreyTextColor,
                  size: 1.8*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,),
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: AppText(
                      text: "Gender",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 255,top: 5),
                    child: AppText(
                      text: 'Male',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 230),
                    child: AppText(
                      text: "Date od Birth",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210,top: 5),
                    child: AppText(
                      text: '02-12-1997',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: AppText(
                      text: "Weight",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250,top: 5),
                    child: AppText(
                      text: '78 Kg',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: AppText(
                      text: "Height",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 240,top: 5),
                    child: AppText(
                      text: '176 cm',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: AppText(
                      text: "Your goal",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210,top: 5),
                    child: AppText(
                      text: 'Lose Weight',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 230),
                    child: AppText(
                      text: "Target Weight",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250,top: 5),
                    child: AppText(
                      text: '70 Kg',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 210),
                    child: AppText(
                      text: "Medical Condition",
                      size: 1.4*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kMainColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 260,top: 5),
                    child: AppText(
                      text: 'None',
                      size: 2.0*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
                height: 30,
                indent: 30,
                endIndent: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> _showCustomAlertDialog(BuildContext context) async {
    bool? result = await showModalBottomSheet<bool>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact Support',
                style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black),
              ),
              Divider(
                height: 25,
                thickness: 1,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 10.0),
              Text(
                'Please contact support to edit your legal name',
                style: kTextStyle.copyWith(fontSize: 14.0, color: kButtonTextColor),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                  onTap: () {
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: kButtonTextColor,
                          border: Border.all(color: kBorderColorTextField),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100,right: 100,top: 10,bottom: 10),
                        child: Text(
                          "Contact support",
                          style: kTextStyle.copyWith(
                              fontSize: 14,
                              color: kTitleColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);                    //
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: kTitleColor,
                          // border: Border.all(color: kBorderColorTextField),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: kTextStyle.copyWith(
                              color: kGreyTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
            ],
          ),
        );
      },
    );
    return result ?? false; // Return false if result is null (dialog dismissed)
  }
}
