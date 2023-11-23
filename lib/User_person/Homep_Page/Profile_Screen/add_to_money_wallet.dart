import 'package:flutter/material.dart';
import 'package:heathfit/User_person/Homep_Page/Profile_Screen/wallet_confirm_screen.dart';
import 'package:heathfit/User_person/Homep_Page/Profile_Screen/wallet_screen.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:heathfit/utilities/sizeconfigure.dart';

import '../../../Widgets/app_text.dart';

class AddToMoneyWallet extends StatefulWidget {
  const AddToMoneyWallet({super.key});

  @override
  State<AddToMoneyWallet> createState() => _AddToMoneyWalletState();
}

class _AddToMoneyWalletState extends State<AddToMoneyWallet> {
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WalletScreen()));
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
          SizedBox(height: 75,),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                Image.asset("assets/images/wallet.png",
                  height: 4.7*SizeConfigure.textMultiplier!,
                ),
                SizedBox(width: 10,),
                AppText(text: "Add Money to Wallet",
                  color: kTitleColor,
                  size: 2.0*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,),
                AppText(text: "Wallet",
                  color: kMainColor,
                  size: 2.0*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w500,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                AppText(text: " ₹",color: kMainColor,size: 30,),
                AppText(text: " 1,000",color: kTitleColor,size: 50,
                  fw: FontWeight.bold,),
              ],
            ),
          ),
          SizedBox(height: 80,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            decoration: BoxDecoration(
              color: Color(0xff1e1e1e),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: AppText(text: "Select Payment Platform",
                    color: kTitleColor,
                    size: 2.0*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,bottom: 30),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WalletConfirmScreen()));
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color(0xffeae8e8),
                              borderRadius: BorderRadius.circular(30)),
                          child: Image.asset('assets/images/googlepay.png'),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color(0xffeae8e8),
                              borderRadius: BorderRadius.circular(30)),
                          child: Image.asset('assets/images/paytm.png'),

                        ),
                        SizedBox(width: 25,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color(0xffeae8e8),
                              borderRadius: BorderRadius.circular(30)),
                          child: Image.asset('assets/images/phonepay.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
