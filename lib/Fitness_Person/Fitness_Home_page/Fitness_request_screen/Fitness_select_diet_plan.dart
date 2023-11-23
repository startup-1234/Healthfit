import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/fitness_diet_chart.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/fitness_request_details.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';
import '../../Fitness_model/fitness_model.dart';

class FitnessSelectDietplan extends StatefulWidget {
  const FitnessSelectDietplan({super.key});

  @override
  State<FitnessSelectDietplan> createState() => _FitnessSelectDietplanState();
}

class _FitnessSelectDietplanState extends State<FitnessSelectDietplan> {
  int selectedCardIndex = -1; // Initially, no card is selected.

  void selectCard(int index) {
    setState(() {
      selectedCardIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 58),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessRequestDetails(pass_index: '', subtitle: 'subtitle', name: 'name')));                  },
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
                      padding: const EdgeInsets.only(right: 80),
                      child: AppText(
                        text: "Select Diet Plan",
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
                padding: const EdgeInsets.only(right: 190),
                child: AppText(text: 'Select Tenure',
                size: 2.0*SizeConfigure.textMultiplier!,
                color: kTitleColor,
                fw: FontWeight.w400,),
              ),
              SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 38),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: fitnessplanLayout.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: InkWell(
                        onTap: () {
                          selectCard(index);
                        },
                        child: Card(
                          color: kButtonTextColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: selectedCardIndex == index ? Colors.yellow : Colors.grey,
                            ),
                          ),
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17, top: 15, bottom: 15),
                                  child: AppText(
                                    text: fitnessplanLayout[index],
                                    color: kTitleColor,
                                    size: 1.6 * SizeConfigure.textMultiplier!,
                                    fw: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: AppText(text: 'Select Diet Plan',
                color: kTitleColor,
                size: 2.0*SizeConfigure.textMultiplier!,),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: fitnessplanList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FitnessDietChartScreen(
                                    // pass_index: passIndex,
                                  )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                          child: Card(
                            color: Colors.grey[800],
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )),
                            child: Column(
                              children: [
                                ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  title: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset(
                                            "assets/fitnessimages/"+ fitnessplanList[index]['image'],
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 220,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      top: 1),
                                                  child: AppText(
                                                      text: fitnessplanList[index]
                                                      ['name'],
                                                      fw: FontWeight.w500,
                                                      size: 2.0 *
                                                          SizeConfigure
                                                              .textMultiplier!,
                                                      color: kTitleColor),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 5),
                                                  child: Row(
                                                    children: [
                                                      AppText(
                                                          text:
                                                          fitnessplanList[index]
                                                          ['title'],
                                                          size: 1.6*
                                                              SizeConfigure
                                                                  .textMultiplier!,
                                                          color: kMainColor),
                                                      SizedBox(
                                                        width: 70,
                                                      ),
                                                      Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: kTitleColor,
                                                        size: 16,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                AppText(
                                                    text: fitnessplanList[
                                                    index]
                                                    ['subtitle'],
                                                    size: 1.6 *
                                                        SizeConfigure
                                                            .textMultiplier!,
                                                    color:
                                                    kMainColor)
                                              ],
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
            ],
          ),
        ),
      ),
    );
  }
}
