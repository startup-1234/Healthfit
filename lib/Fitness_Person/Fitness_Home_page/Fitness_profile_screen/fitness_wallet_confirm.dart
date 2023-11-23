import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_BottomNavBar/Fitness_mainscreen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';

class FitnessWalletConfirm extends StatefulWidget {
  const FitnessWalletConfirm({super.key});

  @override
  State<FitnessWalletConfirm> createState() => _FitnessWalletConfirmState();
}

class _FitnessWalletConfirmState extends State<FitnessWalletConfirm>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 65,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  shape: BoxShape.circle,
                ),
              ),
              Icon(
                Icons.verified,
                size: 140, // Adjust the size as needed
                color: Colors.blue, // Color of the checkmark
              ),
            ],
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Row(
              children: [
                AppText(
                  text: "Succesfully Added Money to",
                  color: kTitleColor,
                  size: 2.0*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,),
                AppText(
                  text: " Wallet",
                  color: kMainColor,
                  size: 2.0*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: [
                AppText(text: " ₹",color: kMainColor,size: 30,),
                AppText(text: " 1,000",color: kTitleColor,size: 50,
                  fw: FontWeight.bold,),
              ],
            ),
          ),
          SizedBox(height: 60,),
          InkWell(
            onTap: () {

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessMainScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 55, right: 55, top: 10, bottom: 10),
                child: AppText(
                  text: "Home",
                  color: kButtonTextColor,
                  size: 1.9*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessProfile()));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: kMainColor
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 10, bottom: 10),
                child: AppText(
                  text: "Account",
                  color: kTitleColor,
                  size: 1.9*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
