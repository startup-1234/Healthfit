import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/Fitness_select_diet_plan.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';

class FitnessRequestDetails extends StatefulWidget {
  var pass_index;
  var name;
  var subtitle;
  FitnessRequestDetails(
      {super.key,
      required this.pass_index,
      required this.subtitle,
      required this.name});

  @override
  State<FitnessRequestDetails> createState() => _FitnessRequestDetailsState();
}

class _FitnessRequestDetailsState extends State<FitnessRequestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 58),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessRequest()));                  },
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
                  padding: const EdgeInsets.only(right: 100),
                  child: AppText(
                    text: "Requests",
                    size: 2.6 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.bold,
                    color: kTitleColor,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                Image.asset('assets/fitnessimages/requestimg1.png'),
                SizedBox(width: 15,),
                Column(
                  children: [
                    AppText(
                      text: '${widget.name}',
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
            height: 400,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xff1A1A1A),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child:  Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  AppText(
                    text: 'Diet Plan requested',
                    size: 1.8*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,
                    color: kMainColor,),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: AppText(
                      text: 'Request Date : 12-02-2023',
                      size: 1.8*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: AppText(
                      text: 'Request ID : #121543',
                      size: 1.8*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: Colors.grey,),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: AppText(
                      text: 'Personal Details',
                      size: 1.8*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kTitleColor,),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff2c2b2b),
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,top: 18,bottom: 18),
                                child: Row(
                                  children: [
                                    Text(
                                        'Gender :',style: TextStyle(color: Colors.grey)
                                    ),
                                    Text(
                                        'Male',style: TextStyle(color: kTitleColor)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:10,right: 25),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff2c2b2b),
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,top: 18,bottom: 18),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Text(
                                          'Age :',style: TextStyle(color: Colors.grey)
                                      ),
                                    ),
                                    Text(
                                        '26',style: TextStyle(color: kTitleColor)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff2c2b2b),
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,top: 18,bottom: 18),
                              child: Row(
                                children: [
                                  Text(
                                      'Weight :',style: TextStyle(color: Colors.grey)
                                  ),
                                  Text(
                                      '78Kg',style: TextStyle(color: kTitleColor,fontSize: 12)
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:10,right: 25),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff2c2b2b),
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3,top: 18,bottom: 18),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,),
                                    child: Text(
                                        'Height :',style: TextStyle(color: Colors.grey)
                                    ),
                                  ),
                                  Text(
                                      '176cm',style: TextStyle(color: kTitleColor,fontSize: 12)
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff2c2b2b),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                  'Target Weight :',style: TextStyle(color: Colors.grey)
                              ),
                            ),
                            Text(
                                '70kg',style: TextStyle(color: kTitleColor)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff2c2b2b),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15,bottom: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                  'Medical Condition :',style: TextStyle(color: Colors.grey)
                              ),
                            ),
                            Text(
                                'None',style: TextStyle(color: kTitleColor)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
          SizedBox(height: 15),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessSelectDietplan()));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                color: kMainColor
              )),
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                child: AppText(
                  text: 'Recommented this plan',
                  color: Colors.grey,
                  size: 1.8*SizeConfigure.textMultiplier!,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
