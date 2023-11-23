import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import '../Fitness_model/fitness_model.dart';

class FitnessActivity extends StatefulWidget {
  const FitnessActivity({super.key});

  @override
  State<FitnessActivity> createState() => _FitnessActivityState();
}

class _FitnessActivityState extends State<FitnessActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: "Activity",
                      size: 3.5 * SizeConfigure.textMultiplier!,
                      fw: FontWeight.bold,
                      color: kTitleColor,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: kGreyTextColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 160),
                child: AppText(
                  text: "Saturday 12/10/2023",
                  color: Colors.grey,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.44,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: fitnessActivityList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        _showFitnessActivityRequestDialog();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                        child: Card(
                          color: Color(0xff111111),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 3
                                ),
                                title: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.asset(
                                          "assets/fitnessimages/"+ fitnessActivityList[index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 130,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 1),
                                                child: AppText(
                                                  text: fitnessActivityList[index]['name'],
                                                  fw: FontWeight.w400,
                                                  size: 2.0 * SizeConfigure.textMultiplier!,
                                                  color: kTitleColor,
                                                ),
                                              ),
                                              SizedBox(height: 2),
                                              AppText(
                                                text: fitnessActivityList[index]['title'],
                                                size: 1.6 * SizeConfigure.textMultiplier!,
                                                color:Colors.grey,
                                              ),
                                              SizedBox(height: 2),
                                              AppText(
                                                text: fitnessActivityList[index]['subtitle'],
                                                size: 1.6 * SizeConfigure.textMultiplier!,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                        AppText(
                                          text: fitnessActivityList[index]['amount'],
                                          size: 1.6 * SizeConfigure.textMultiplier!,
                                          color: kMainColor,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: kTitleColor,
                                          size: 16,
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
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190,top: 10),
                child: AppText(
                  text: "Friday 12/10/2023",
                  color: Colors.grey,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: fitnessActivityLists.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                        child: Card(
                          color: Color(0xff111111),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 5
                                ),
                                title: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.asset(
                                          "assets/fitnessimages/"+ fitnessActivityLists[index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 130,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 1),
                                                child: AppText(
                                                  text: fitnessActivityLists[index]['name'],
                                                  fw: FontWeight.w400,
                                                  size: 2.1 * SizeConfigure.textMultiplier!,
                                                  color: kTitleColor,
                                                ),
                                              ),
                                              SizedBox(height: 2),
                                              AppText(
                                                text: fitnessActivityLists[index]['title'],
                                                size: 1.6 * SizeConfigure.textMultiplier!,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(height: 2),
                                              AppText(
                                                text: fitnessActivityLists[index]['subtitle'],
                                                size: 1.6 * SizeConfigure.textMultiplier!,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                        AppText(
                                          text: fitnessActivityLists[index]['amount'],
                                          size: 1.6 * SizeConfigure.textMultiplier!,
                                          color: kMainColor,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: kTitleColor,
                                          size: 16,
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
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  void _showFitnessActivityRequestDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff1E1E1E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Container(
            height: 150,
            child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       mainAxisSize: MainAxisSize.max,
                       children: [
                         Image.asset(
                          'assets/fitnessimages/requestimg1.png',
                           fit: BoxFit.cover,
                           height: 74,
                           width: 74,
                         ),
                         SizedBox(
                           width: 130,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 1),
                                 child: Row(
                                   children: [
                                     AppText(
                                       text: 'Muhammed Shijaz',
                                       fw: FontWeight.w400,
                                       size: 1.8 * SizeConfigure.textMultiplier!,
                                       color: kTitleColor,
                                     ),

                                     Padding(
                                       padding: const EdgeInsets.only(left: 8),
                                       child: Icon(Icons.arrow_forward_ios,
                                       size: 14,
                                       color: kTitleColor,),
                                     )
                                   ],
                                 ),
                               ),
                               SizedBox(height: 17),
                               AppText(
                                 text: 'Cold Latte',
                                 size: 1.6 * SizeConfigure.textMultiplier!,
                                 color:kTitleColor,
                               ),
                               SizedBox(height: 5),
                               AppText(
                                 text: 'from Planet Cafe',
                                 size: 1.5 * SizeConfigure.textMultiplier!,
                                 color: Colors.grey,
                               ),
                               SizedBox(height: 15),
                               Row(
                                 children: [
                                   AppText(
                                     text: 'Order Amount :',
                                     size: 1.5 * SizeConfigure.textMultiplier!,
                                     color: Colors.grey,
                                   ),
                                   SizedBox(width: 10,),
                                   AppText(
                                     text: '230.00',
                                     size: 1.5 * SizeConfigure.textMultiplier!,
                                     color: kMainColor,
                                   ),
                                 ],
                               ),
                               SizedBox(height: 5),
                               Row(
                                 children: [
                                   AppText(
                                     text: 'Comision Amount :',
                                     size: 1.5 * SizeConfigure.textMultiplier!,
                                     color: Colors.grey,
                                   ),SizedBox(width: 10,),
                                   AppText(
                                     text: '23.00',
                                     size: 1.5 * SizeConfigure.textMultiplier!,
                                     color: kMainColor,
                                   ),
                                 ],
                               ),
                               SizedBox(height: 15),
                               Row(
                                 children: [
                                   Expanded(
                                     child: AppText(
                                       text: 'Payment Status : ',
                                       size: 1.5 * SizeConfigure.textMultiplier!,
                                       color: Colors.grey,
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   AppText(
                                     text: 'Pending',
                                     size: 1.5 * SizeConfigure.textMultiplier!,
                                     color: kMainColor,
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ),

                       ],
                     ),
                   ],
                 ),
          ),
        );
      },
    );
  }
}
