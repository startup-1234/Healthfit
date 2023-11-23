import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen/fitness_addtomoney_wallet.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';

class FitnessWalletScreen extends StatefulWidget {
  const FitnessWalletScreen({super.key});

  @override
  State<FitnessWalletScreen> createState() => _FitnessWalletScreenState();
}

class _FitnessWalletScreenState extends State<FitnessWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 75,),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessProfile()));
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
          SizedBox(height: 65,),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                Image.asset("assets/images/wallet.png",
                  height: 4.7*SizeConfigure.textMultiplier!,
                ),
                SizedBox(width: 10,),
                AppText(text: "Wallet Balance",
                  color: kTitleColor,
                  size: 2.3*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                AppText(text: " ₹",color: kMainColor,size: 30,),
                AppText(text: " 1,450",color: kTitleColor,size: 50,
                  fw: FontWeight.bold,),
              ],
            ),
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(text: "Add Money to",color: kTitleColor,size: 2.0*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,),
                AppText(text: " Wallet",color: kMainColor,size: 2.0*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: kGreyTextColor,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: AppText(
                        text: "₹1,000",
                        color: kTitleColor,
                        size: 2.3*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    ))),
          ),
          SizedBox(height: 15,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: walletList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: kGreyTextColor
                    ),
                  ),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30, right: 35, top: 15, ),
                          child: AppText(
                            text: walletList[index]['firstRS'],
                            color: kTitleColor,
                            size: 1.6 * SizeConfigure.textMultiplier!,
                            fw: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: walletList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: kGreyTextColor
                    ),
                  ),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30, right: 33, top: 15, ),
                          child: AppText(
                            text: walletList[index]['secondRS'],
                            color: kTitleColor,
                            size: 1.6 * SizeConfigure.textMultiplier!,
                            fw: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 70,),
          InkWell(
            onTap: () {

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessAddToMoneyWallet()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 80, right: 80, top: 10, bottom: 10),
                child: AppText(
                  text: "Proceed to add 1,000",
                  color: kButtonTextColor,
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
