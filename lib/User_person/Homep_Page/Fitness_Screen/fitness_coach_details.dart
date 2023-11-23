import 'package:flutter/material.dart';
import 'package:heathfit/Widgets/app_text.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../utilities/sizeconfigure.dart';
import 'consult_fitness_coach.dart';

class FitnessCoachDetails extends StatefulWidget {
  const FitnessCoachDetails({super.key});

  @override
  State<FitnessCoachDetails> createState() => _FitnessCoachDetailsState();
}

class _FitnessCoachDetailsState extends State<FitnessCoachDetails> {
  bool isVegan = false;
  Color buttonColor = kMainColor;
  bool isDietPlanRequested = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
        child:  Stack(
          children: [
            Column(
              children: [
                Image.asset("assets/images/img1.png")
              ],
            ),
            Positioned(
              top: 50,
              left: 20,
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ConsultFitnessCoach()));
                },
                child: Container(
                  height: 4.5 * SizeConfigure.textMultiplier!,
                  width: 4.5 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
             top: 220,
              left: 0,
              right: 0,
              child: Container(
                height: 75.0*SizeConfigure.heightMultiplier!,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                   Row(
                     children: [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 35,top: 40),
                             child: AppText(text: "Jacob Rodriguez",
                             size: 2.7*SizeConfigure.textMultiplier!,
                               fw: FontWeight.w500,
                               color: kTitleColor,
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 8,right: 25),
                             child: AppText(text: "Malappuram",
                             size: 2.0*SizeConfigure.textMultiplier!,
                               fw: FontWeight.w300,
                               color: kMainColor,
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: 50,),
                       Padding(
                         padding: const EdgeInsets.only(top: 40),
                         child: InkWell(
                             onTap: () {
                             },
                             child: Container(
                                 height: 6.0 * SizeConfigure.textMultiplier!,
                                 width: 6.0 * SizeConfigure.textMultiplier!,
                                 decoration: BoxDecoration(
                                     color: kTitleColor, shape: BoxShape.circle),
                                 child: Icon(
                                   Icons.call,
                                   color: kButtonTextColor,
                                   size: 16,
                                 ))),
                       ),
                       SizedBox(width: 15,),
                       Padding(
                         padding: const EdgeInsets.only(top: 40),
                         child: InkWell(
                             onTap: () {
                             },
                             child: Container(
                                 height: 6.0 * SizeConfigure.textMultiplier!,
                                 width: 6.0 * SizeConfigure.textMultiplier!,
                                 decoration: BoxDecoration(
                                     color: kTitleColor, shape: BoxShape.circle),
                                 child: Image.asset("assets/images/whatsapp.png",))),
                       ),
                     ],
                   ),
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: AppText(text: "Expertise :",
                          color: kTitleColor,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: AppText(text: "5 Years",
                            color: kMainColor,
                          size: 2.3*SizeConfigure.textMultiplier!,

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: AppText(
                        text: "Skills",
                        size: 2.3*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                        color: kTitleColor,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                                    child: AppText(text: "Training Sessions",
                                    size: 1.8*SizeConfigure.textMultiplier!,
                                    color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                                    child: AppText(text: "Yoga",
                                      size: 1.8*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6,bottom: 6),
                                    child: AppText(text: "Nutrition",
                                      size: 1.8*SizeConfigure.textMultiplier!,
                                      color: kTitleColor,
                                      fw: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey[800],
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                                      child: AppText(text: "Kettleballs",
                                        size: 1.8*SizeConfigure.textMultiplier!,
                                        color: kTitleColor,
                                        fw: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey[800],
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                                      child: AppText(text: "Aerobics",
                                        size: 1.8*SizeConfigure.textMultiplier!,
                                        color: kTitleColor,
                                        fw: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(right: 185),
                      child: AppText(
                        text: "Certifications",
                        size: 2.3*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                        color: kTitleColor,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                                  child: AppText(text: "Fitness Coach Training Certified",
                                    size: 1.8*SizeConfigure.textMultiplier!,
                                    color: kTitleColor,
                                    fw: FontWeight.normal,
                                  ),
                                ),
                              ),
                              SizedBox(width: 50,),
                              Icon(Icons.verified,
                              color: kMainColor,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                                  child: AppText(text: "Fitness Trainer Institute Graduate",
                                    size: 1.8*SizeConfigure.textMultiplier!,
                                    color: kTitleColor,
                                    fw: FontWeight.normal,
                                  ),
                                ),
                              ),
                              SizedBox(width: 40,),
                              Icon(Icons.verified,
                                color: kMainColor,)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    InkWell(
                      onTap: () {
                        _showDietPlanRequestDialog(); // Show the diet plan request dialog
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: buttonColor, // Use the buttonColor variable
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 95, right: 95, top: 13, bottom: 13),
                          child: AppText(
                            text: "Request Diet Plan",
                            size: 2.1 * SizeConfigure.textMultiplier!,
                            color: kButtonTextColor,
                            fw: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _showDietPlanRequestDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kTitleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: AppText(
            text: "Diet Plan Request",
            size: 2.2 * SizeConfigure.textMultiplier!,
            fw: FontWeight.w500,
            color: kButtonTextColor,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Diet plan will be available to you when\n"
                    "the Nutritionist examines your profile\n"
                    "and prescribes the plan",
                style: TextStyle(
                  color: kButtonTextColor,
                  fontSize: 1.7 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text(
                    "Only recommend vegan foods",
                    style: TextStyle(
                      color: kButtonTextColor,
                      fontSize: 1.7 * SizeConfigure.textMultiplier!,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Radio(
                    value: false,
                    groupValue: isVegan,
                    onChanged: (bool? value) {
                      setState(() {
                        isVegan = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Update the button color to yellow when clicking "Cancel"
                      setState(() {
                        buttonColor = kMainColor;
                      });
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessCoachDetails()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: AppText(
                          text: "Cancel",
                          color: Colors.grey[500],
                          size: 12,
                          fw: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: () {
                      // Update the button color to white when clicking "Request"
                      setState(() {
                        buttonColor = Colors.white;
                      });
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessCoachDetails()));

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: AppText(
                          text: "Request",
                          color: kButtonTextColor,
                          size: 12,
                          fw: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

}
