import 'package:flutter/material.dart';
import 'package:heathfit/Widgets/app_text.dart';
import 'package:heathfit/utilities/constant.dart';
import '../../../Models/model.dart';
import '../../../utilities/sizeconfigure.dart';
import '../service_screen.dart';
import 'fitness_coach_details.dart';

class ConsultFitnessCoach extends StatefulWidget {
  const ConsultFitnessCoach({super.key});

  @override
  State<ConsultFitnessCoach> createState() => _ConsultFitnessCoachState();
}

class _ConsultFitnessCoachState extends State<ConsultFitnessCoach> {
  int? passIndex;
  int? selectedLocationIndex = 0;
  int? selectedExpertiseIndex = 1;
  int? selectedRatingIndex = 0;
  // Create a variable to store the selected filter index
  int? selectedFilterIndex=0;



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ServiceScreen()));
                      },
                      child: Container(
                          height: 5.0 * SizeConfigure.textMultiplier!,
                          width: 5.0 * SizeConfigure.textMultiplier!,
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
                  width: 40,
                ),
                AppText(
                  text: "Fitness Trainers",
                  size: 2.8 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.bold,
                  color: kTitleColor,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Container(
                      height: 5.6 * SizeConfigure.textMultiplier!,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xff161616),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: Color(0xff454545),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AppText(
                            text: "Search Trainers",
                            color: Color(0xff454545),
                            size: 2.1 * SizeConfigure.textMultiplier!,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/images/Vector.png',
                      height: 25,
                      width: 25,
                      color: kTitleColor,
                    ),
                    onTap: ()async {
                      bool shouldExit = await _showCustomAlertDialog(context);
                      if (shouldExit) {
                        // Perform the action you want when the user confirms the alert
                        // For example, exiting the app
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ConsultFitnessCoach()));
                      }
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: fitnessList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        passIndex = index;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FitnessCoachDetails(
                                    // pass_index: passIndex,
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Card(
                          color: Colors.grey[800],
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex:1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        fitnessList[index]['image'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
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
                                                    text: fitnessList[index]
                                                    ['phone'],
                                                    fw: FontWeight.w400,
                                                    size: 1.4 *
                                                        SizeConfigure
                                                            .textMultiplier!,
                                                    color: Colors.grey),
                                                SizedBox(height: 10,),
                                                AppText(
                                                    text:
                                                    fitnessList[index]
                                                    ['title'],
                                                    size: 2.2 *
                                                        SizeConfigure
                                                            .textMultiplier!,
                                                    color: kTitleColor),
                                                SizedBox(height: 10,),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 2.2 *
                                                          SizeConfigure
                                                              .textMultiplier!,
                                                      width: 4.7 *
                                                          SizeConfigure
                                                              .textMultiplier!,
                                                      decoration: BoxDecoration(
                                                          color: kMainColor,
                                                          borderRadius:
                                                          BorderRadius
                                                              .all(Radius
                                                              .circular(
                                                              5))),
                                                      child: Center(
                                                        child: AppText(
                                                            text: fitnessList[
                                                            index]
                                                            ['rating'],
                                                            size: 1.5 *
                                                                SizeConfigure
                                                                    .textMultiplier!,
                                                            fw: FontWeight.bold,
                                                            color:
                                                            kButtonTextColor),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    AppText(
                                                        text:
                                                        fitnessList[index]
                                                        ['subtitle'],
                                                        size: 1.4 *
                                                            SizeConfigure
                                                                .textMultiplier!,
                                                        color: kMainColor),
                                                  ],
                                                )
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
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
  Future<bool> _showCustomAlertDialog(BuildContext context) async {
    bool? result = await showModalBottomSheet<bool>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (BuildContext context) {
        return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    "Filter Fitness Trainers",
                    style: TextStyle(
                        fontSize: 2.0 *
                            SizeConfigure.textMultiplier!,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: AppText(
                    text: "Location",
                    size:
                    2.0 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kButtonTextColor,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: MediaQuery.of(context).size.height * 0.08,
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: locatioLayout.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Set the selected filter index
                          setState(() {
                            selectedFilterIndex = index;
                          });
                        },
                        child: Card(
                          color: selectedFilterIndex == index
                              ?  Colors.grey[200]
                              : Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: selectedFilterIndex == index
                                  ? Colors.black // Selected border color
                                  : Colors.transparent,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 10, bottom: 10),
                                child: AppText(
                                  text: locatioLayout[index],
                                  color: Colors.black,
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
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: AppText(
                    text: "Expertise",
                    size:
                    2.0 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kButtonTextColor,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: locatioLayout.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Set the selected filter index
                          setState(() {
                            selectedExpertiseIndex = index;
                          });
                        },
                        child: Card(
                          color: selectedExpertiseIndex == index
                              ?  Colors.grey[200]
                              : Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: selectedExpertiseIndex == index
                                  ? Colors.black // Selected border color
                                  : Colors.transparent,
                            ),
                          ),
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 10, bottom: 10),
                                  child: AppText(
                                    text: locatioLayout[index],
                                    color: Colors.black,
                                    size: 1.6 * SizeConfigure.textMultiplier!,
                                    fw: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: AppText(
                    text: "Rating",
                    size:
                    2.0 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kButtonTextColor,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: locatioLayout.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Set the selected filter index
                          setState(() {
                            selectedRatingIndex = index;
                          });
                        },
                        child: Card(
                          color: selectedRatingIndex == index
                              ?  Colors.grey[200]
                              : Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: selectedRatingIndex == index
                                  ? Colors.black // Selected border color
                                  : Colors.transparent,
                            ),
                          ),
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 10, bottom: 10),
                                  child: AppText(
                                    text: locatioLayout[index],
                                    color: Colors.black,
                                    size: 1.6 * SizeConfigure.textMultiplier!,
                                    fw: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ConsultFitnessCoach()));
                  },
                  child: Center(
                    child: Container(
                      height: 7 * SizeConfigure.heightMultiplier!,
                      width: 80 * SizeConfigure.widthMultiplier!,
                      decoration: BoxDecoration(
                        color: kButtonTextColor, // Use the buttonColor variable
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                        child: AppText(
                          text: "Apply",
                          size: 2.1 * SizeConfigure.textMultiplier!,
                          color: kTitleColor,
                          fw: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ));
      },
    );
    return result ?? false; // Return false if result is null (dialog dismissed)
  }
}
