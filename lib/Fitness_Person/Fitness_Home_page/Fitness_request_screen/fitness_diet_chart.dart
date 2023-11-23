import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/Fitness_select_diet_plan.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/fitness_request_profile.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';



class FitnessDietChartScreen extends StatefulWidget {
  const FitnessDietChartScreen({super.key});

  @override
  State<FitnessDietChartScreen> createState() => _FitnessDietChartScreenState();
}

class _FitnessDietChartScreenState extends State<FitnessDietChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 55),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessSelectDietplan()));                  },
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
                    text: "Diet Chart",
                    size: 2.6 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.bold,
                    color: kTitleColor,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: [
                  SizedBox(
                    height:100,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: kMainColor,thickness: 1),
                      indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: kMainColor
                      ),
                      endChild: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 40),
                            child: Row(
                              children: [
                                AppText(text: 'Breakfast',
                                size: 2.0*SizeConfigure.textMultiplier!,
                                color: kTitleColor,),
                                SizedBox(width: 110,),
                                AppText(text: '800/2000 Kcal',
                                  size: 1.6*SizeConfigure.textMultiplier!,
                                  color: kMainColor,)
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Bread",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Avocado",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Pan Cakes",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:100,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: kMainColor,thickness: 1),
                      indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: kMainColor
                      ),
                      endChild: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 40),
                            child: Row(
                              children: [
                                AppText(text: 'Pre Lunch',
                                  size: 2.0*SizeConfigure.textMultiplier!,
                                  color: kTitleColor,),
                                SizedBox(width: 110,),
                                AppText(text: '800/2000 Kcal',
                                  size: 1.6*SizeConfigure.textMultiplier!,
                                  color: kMainColor,)
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Carbs",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Grapes",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Mango",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:100,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: kMainColor,thickness: 1),
                      indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: kMainColor
                      ),
                      endChild: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 40),
                            child: Row(
                              children: [
                                AppText(text: 'Lunch',
                                  size: 2.0*SizeConfigure.textMultiplier!,
                                  color: kTitleColor,),
                                SizedBox(width: 135,),
                                AppText(text: '800/2000 Kcal',
                                  size: 1.6*SizeConfigure.textMultiplier!,
                                  color: kMainColor,)
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Sandwich",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Mint Lime",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Pickle",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:100,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: kMainColor,thickness: 1),
                      indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: kMainColor
                      ),
                      endChild: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 40),
                            child: Row(
                              children: [
                                AppText(text: 'Post Lunch',
                                  size: 2.0*SizeConfigure.textMultiplier!,
                                  color: kTitleColor,),
                                SizedBox(width: 100,),
                                AppText(text: '800/2000 Kcal',
                                  size: 1.6*SizeConfigure.textMultiplier!,
                                  color: kMainColor,)
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Cookies",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Almonds",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Berries",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:100,
                    child: TimelineTile(
                      beforeLineStyle: LineStyle(color: kMainColor,thickness: 1),
                      indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: kMainColor
                      ),
                      endChild: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 40),
                            child: Row(
                              children: [
                                AppText(text: 'Dinner',
                                  size: 2.0*SizeConfigure.textMultiplier!,
                                  color: kTitleColor,),
                                SizedBox(width: 135,),
                                AppText(text: '800/2000 Kcal',
                                  size: 1.6*SizeConfigure.textMultiplier!,
                                  color: kMainColor,)
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Pasta",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Paneer",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff171717),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                    child: AppText(text: "Dal",
                                      size: 1.6*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessRequestProfile(name: 'name', pass_index: 'pass_index', subtitle: 'subtitle')));
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
            ),
          )
        ],
      ),
    );
  }
}
