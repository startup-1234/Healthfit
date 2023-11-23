import 'package:flutter/material.dart';
import 'package:heathfit/Models/model.dart';
import 'package:heathfit/User_person/Homep_Page/Profile_Screen/settings_screen/security_settings.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../../Widgets/app_text.dart';
import '../../../../utilities/sizeconfigure.dart';
import '../../profile_screen.dart';
import '../profile_settings_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int? passIndex;
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
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
          SizedBox(height: 30),
          SizedBox(
            height: 150,
            child: ListView.builder(
                itemCount: SettingsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      passIndex=index;
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileSettingScreen(
                        pass_index:passIndex,
                        image: SettingsList[index]['image'],
                        name:  SettingsList[index]['name'],
                        phone:  SettingsList[index]['phone'],
                        email: SettingsList[index]['email'],
                      )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Card(
                        color: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            )),
                        child: Column(
                          children: [
                            ListTile(

                              title: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.asset('assets/images/profileimg.png',
                                        fit: BoxFit.cover,
                                      ),

                                      Container(
                                        height: 100, // Adjust the height
                                        child: VerticalDivider(
                                          color: kGreyTextColor,
                                          thickness: 1, // Adjust the thickness
                                        ),
                                      ),
                                      Expanded(
                                        flex:2,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    AppText(
                                                      text: SettingsList[index]
                                                      ['name'],
                                                      size: 2.4*SizeConfigure.textMultiplier!,
                                                      fw: FontWeight.bold,
                                                      color: kTitleColor,),
                                                    SizedBox(height: 10,),
                                                    AppText(
                                                      text:
                                                      SettingsList[index]
                                                      ['phone'],
                                                      size: 1.9*SizeConfigure.textMultiplier!,
                                                      fw: FontWeight.w400,
                                                      color: Colors.grey,),
                                                    SizedBox(height: 5,),
                                                    AppText(
                                                      text: SettingsList[
                                                      index]
                                                      ['email'],
                                                      size: 1.7*SizeConfigure.textMultiplier!,
                                                      fw: FontWeight.w400,
                                                      color: Colors.grey,),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex:1,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: kTitleColor,
                                          size: 16,
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 40,),
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
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
              },
              child: Row(
                children: [
                  Icon(Icons.lock_outline_rounded,color: kTitleColor,size: 3.4*SizeConfigure.textMultiplier!,),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: AppText(text: "Privacy",
                          color: kTitleColor,
                          size: 2.3*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,),
                      ),
                      SizedBox(height: 5,),
                      AppText(text: "Manage the data you share with us",
                        color: Colors.grey,
                        size: 1.5*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w400,),
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
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: InkWell(
              onTap: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecuritySettings()));
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
                        child: AppText(text: "Security",
                          color: kTitleColor,
                          size: 2.3*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: AppText(text: "Manage login password",
                          color: Colors.grey,
                          size: 1.5*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,),
                      ),
                    ],
                  ),
                  SizedBox(width: 38,),
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
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Icon(Icons.logout,
                color: Color(0xffFF4F4F),),
                SizedBox(width: 10,),
                AppText(text: "Sign Out",
                  color: kTitleColor,
                  size: 2.3*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,),
              ],
            ),
          )

        ],
      ),
    );
  }
}
