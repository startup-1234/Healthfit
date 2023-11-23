import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/fitness_diet_chart.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';

class FitnessRequestProfile extends StatefulWidget {
  var pass_index;
  var name;
  var subtitle;
  FitnessRequestProfile({super.key,required this.name,required this.pass_index,required this.subtitle});

  @override
  State<FitnessRequestProfile> createState() => _FitnessRequestProfileState();
}

class _FitnessRequestProfileState extends State<FitnessRequestProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 58),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessDietChartScreen()));
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
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: AppText(
                    text: "Request",
                    size: 2.6 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.bold,
                    color: kTitleColor,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                Image.asset('assets/fitnessimages/requestimg1.png'),
                SizedBox(width: 15,),
                Column(
                  children: [
                    AppText(
                      text: 'Michael Scott',
                      size: 2.7*SizeConfigure.textMultiplier!,
                      fw: FontWeight.bold,
                      color: kTitleColor,),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: kTitleColor,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.call,
                              color: kButtonTextColor,
                              size: 13,),
                          ),
                        ),
                        SizedBox(width: 5,),
                        AppText(
                          text: '+91 859 858 2556',
                          size: 1.7 *SizeConfigure.textMultiplier!,
                          fw: FontWeight.w500,
                          color: kTitleColor,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Color(0xff1A1A1A),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: AppText(
                    text: 'The Mediterranean diet',
                    size: 1.9*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kTitleColor,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: AppText(
                    text: 'Based on its nutrition\nbenefits and sustainability',
                    size: 1.6*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,
                    color: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: AppText(
                    text: 'Diet Plan Recommend',
                    size: 1.9*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kMainColor,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: AppText(
                    text: 'Start Date : 12-02-2023',
                    size: 1.6*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,
                    color: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: AppText(
                    text: 'Request ID : #121543',
                    size: 1.6*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,
                    color: Colors.grey,),
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      AppText(
                        text: 'Personal Details',
                        size: 1.8*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w400,
                        color: kTitleColor),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward_ios,color: kMainColor,size: 15,)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessRequest()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                            color: Colors.grey
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
                      child: AppText(
                        text: 'Cancel',
                        color: Colors.grey,
                        size: 1.8*SizeConfigure.textMultiplier!,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessRequest()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                            color: kMainColor
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
                      child: AppText(
                        text: 'Confirm',
                        color: Colors.grey,
                        size: 1.8*SizeConfigure.textMultiplier!,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ],),
    );
  }
}
