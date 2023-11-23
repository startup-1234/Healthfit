import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/Fitness_setting_screen/fitness_settings_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/fitness_help_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/fitness_transaction_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/fitness_wallet_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessProfile extends StatefulWidget {
  const FitnessProfile({super.key});

  @override
  State<FitnessProfile> createState() => _FitnessProfileState();
}

class _FitnessProfileState extends State<FitnessProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 55),
          Padding(
            padding: const EdgeInsets.only(left: 305),
            child: Icon(Icons.more_vert, color: kGreyTextColor),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Image.asset('assets/images/profileimg.png'),
                Container(
                  height: 100, // Adjust the height
                  child: VerticalDivider(
                    color: kGreyTextColor,
                    thickness: 1, // Adjust the thickness
                    width: 20,  // Adjust the width
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AppText(
                        text: "John Shaw",
                        size: 2.5*SizeConfigure.textMultiplier!,
                        fw: FontWeight.bold,
                        color: kTitleColor,),
                    ),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: AppText(
                        text: "Joined",
                        size: 1.5*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w400,
                        color: kGreyTextColor,),
                    ),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: AppText(
                        text: "2 month ago",
                        size: 2.0*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w300,
                        color: kTitleColor,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12,right: 12,bottom: 2,top: 2),
                          child: AppText(
                            text: "3.8",
                            color: kButtonTextColor,
                            size: 1.5 * SizeConfigure.textMultiplier!,
                            fw: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessWalletScreen()));
                        },
                        child: Container(
                            height: 15.4*SizeConfigure.textMultiplier!,
                            decoration: BoxDecoration(
                                color: Color(0xff232323),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/wallet.png',),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: AppText(text: "Wallet",
                                        size: 1.8*SizeConfigure.textMultiplier!,
                                        fw: FontWeight.w400,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                        ),
                      )
                  )),
              SizedBox(width: 30,),
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessTransactionScreen()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 15.4 * SizeConfigure.textMultiplier!,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color(0xff232323),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Column(
                              children: [
                                Image.asset('assets/images/transaction.png', height: 40,),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 87,
                          child: Container(
                            width: 10, // Adjust the size of the dot
                            height: 10, // Adjust the size of the dot
                            child: Icon(
                              Icons.circle_rounded,
                              size: 13,
                              color: kMainColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Positioned(
                          bottom: 25,
                          left: 20,
                          child: AppText(
                            text: "Transactions",
                            size: 1.8 * SizeConfigure.textMultiplier!,
                            fw: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
              )


            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessSettingScreen()));
              },
              child: Row(
                children: [
                  Icon(Icons.settings,color: kTitleColor,size: 3.4*SizeConfigure.textMultiplier!,),
                  SizedBox(width: 20,),
                  AppText(text: "Settings",
                    color: kTitleColor,
                    size: 2.3*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,),
                  SizedBox(width: 150,),
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessHelpScreen()));
              },
              child: Row(
                children: [
                  Icon(Icons.question_mark,color: kTitleColor,size: 3.4*SizeConfigure.textMultiplier!,),
                  SizedBox(width: 20,),
                  AppText(text: "Help",
                    color: kTitleColor,
                    size: 2.3*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,),
                  SizedBox(width: 178,),
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
            child: Row(
              children: [
                Icon(Icons.privacy_tip,color: kTitleColor,size: 3.4*SizeConfigure.textMultiplier!,),
                SizedBox(width: 20,),
                AppText(text: "Privacy Policy",
                  color: kTitleColor,
                  size: 2.3*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,),
                SizedBox(width: 110,),
                Icon(Icons.arrow_forward_ios,color: kTitleColor,size: 2.4*SizeConfigure.textMultiplier!,),

              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          SizedBox(height: 30,),
          AppText(text: "Version:2.345.775.34",
            color: kGreyTextColor,
            size: 1.8*SizeConfigure.textMultiplier!,
            fw: FontWeight.w300,)

        ],
      ),
    );
  }
}
