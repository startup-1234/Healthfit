import 'package:flutter/material.dart';
import 'package:heathfit/Models/model.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45,),
              Padding(
                padding: const EdgeInsets.only(right: 230,top: 10),
                child: AppText(
                  text: "Activity",
                  size: 2.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.bold,
                  color: kTitleColor,
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: AppText(text: "Saturday 12/10/2023",
                color: Colors.grey,
                size: 2.0*SizeConfigure.textMultiplier!,
                ),
              ),
          Container(
            height: 360,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(), // Disable scrolling
              itemCount: ActivityList.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/" + ActivityList[index]['image'],
                            height: 12.0*SizeConfigure.textMultiplier!,
                            width: 12.0*SizeConfigure.textMultiplier!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: ActivityList[index]['title'],
                                fw: FontWeight.w500,
                                size: 2.0 * SizeConfigure.textMultiplier!,
                                color: kTitleColor,
                              ),
                              SizedBox(height: 3),
                              AppText(
                                text: ActivityList[index]['subtitle'],
                                size: 1.7 * SizeConfigure.textMultiplier!,
                                fw: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 3),
                              AppText(
                                text: ActivityList[index]['time'],
                                size: 1.6 * SizeConfigure.textMultiplier!,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderFoodScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff232323),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppText(
                                text: "Re-Order",
                                color: kMainColor,
                                size: 1.7 * SizeConfigure.textMultiplier!,
                                fw: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: AppText(text: "Friday 12/10/2023",
                  color: Colors.grey,
                  size: 2.0*SizeConfigure.textMultiplier!,
                ),
              ),
              Container(
                height: 360,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(), // Disable scrolling
                  itemCount: ActivityList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/" + ActivityList[index]['image'],
                                height: 12.0*SizeConfigure.textMultiplier!,
                                width: 12.0*SizeConfigure.textMultiplier!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: ActivityList[index]['title'],
                                    fw: FontWeight.w500,
                                    size: 2.0 * SizeConfigure.textMultiplier!,
                                    color: kTitleColor,
                                  ),
                                  SizedBox(height: 3),
                                  AppText(
                                    text: ActivityList[index]['subtitle'],
                                    size: 1.7 * SizeConfigure.textMultiplier!,
                                    fw: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 3),
                                  AppText(
                                    text: ActivityList[index]['time'],
                                    size: 1.6 * SizeConfigure.textMultiplier!,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderFoodScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff232323),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: AppText(
                                    text: "Re-Order",
                                    color: kMainColor,
                                    size: 1.7 * SizeConfigure.textMultiplier!,
                                    fw: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 270),
                child: AppText(text: "Order Again",
                  color: kMainColor,
                  size: 1.7*SizeConfigure.textMultiplier!,),
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Icons.circle_rounded,
                      size: 8,
                      color: kMainColor,),
                    SizedBox(width: 10,),
                    AppText(text: 'Food Delivered',
                    size: 1.8*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kTitleColor,),
                    SizedBox(width: 160,),
                    AppText(text: '8:30 AM',
                      size: 1.6*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60,top: 10),
                child: AppText(text: "Smoothie from Bean Hub was delivered",
                color: kTitleColor,
                size: 1.8*SizeConfigure.textMultiplier!,),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 270),
                child: AppText(text: "Order Again",
                  color: kMainColor,
                  size: 1.7*SizeConfigure.textMultiplier!,),
              ),
              Divider(
                height: 25,
                thickness: 1,
                color: kGreyTextColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Icons.circle_rounded,
                      size: 8,
                      color: kMainColor,),
                    SizedBox(width: 10,),
                    AppText(text: 'Diet plan from Fitness Coach',
                      size: 1.9*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,),
                    SizedBox(width: 70,),
                    AppText(text: '6:45 AM',
                      size: 1.6*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: kTitleColor,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120,top: 10),
                child: AppText(text: "Arun KT prescribed a diet plan",
                  color: kTitleColor,
                  size: 1.8*SizeConfigure.textMultiplier!,),
              ),
              Divider(
                height: 25,
                thickness: 1,
                color: kGreyTextColor,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
