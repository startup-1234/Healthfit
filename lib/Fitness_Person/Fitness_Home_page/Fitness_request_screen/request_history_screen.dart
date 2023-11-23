import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/constant.dart';
import '../../../utilities/sizeconfigure.dart';
import '../../Fitness_model/fitness_model.dart';
import 'fitness_request_details.dart';

class RequestHistory extends StatefulWidget {
  const RequestHistory({super.key});

  @override
  State<RequestHistory> createState() => _RequestHistoryState();
}

class _RequestHistoryState extends State<RequestHistory> {

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Container(
                      height: 5.6 * SizeConfigure.textMultiplier!,
                      width: 240,
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
                            text: "Search Requests",
                            color: Color(0xff454545),
                            size: 2.1 * SizeConfigure.textMultiplier!,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20,),
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
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ConsultFitnessCoach()));
                  }
                },
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: FitnessrequestListss.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessRequestDetails(
                    pass_index: '', subtitle: '', name: '',)));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Card(
                    color: Colors.grey[800],
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
                                    FitnessrequestListss[index]['image'],
                                    fit: BoxFit.cover,
                                    height: 74,
                                    width: 74,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 1),
                                          child: AppText(
                                            text: FitnessrequestListss[index]['name'],
                                            fw: FontWeight.w400,
                                            size: 2.1 * SizeConfigure.textMultiplier!,
                                            color: kTitleColor,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        AppText(
                                          text: FitnessrequestListss[index]['subtitle'],
                                          size: 1.6 * SizeConfigure.textMultiplier!,
                                          color: kMainColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
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
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Future<bool> _showCustomAlertDialog(BuildContext context) async {
    int? selectedValue = 0;
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
          height: 330,
          decoration: BoxDecoration(
            color: Color(0xffD9D9D9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  "Filter By",
                  style: TextStyle(
                    fontSize: 2.0 * SizeConfigure.textMultiplier!,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    buildRadioOption(
                      text: 'Accepted',
                      value: 0,
                      selectedValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      decoration: BoxDecoration(
                        color: kTitleColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      activeColor:kMainColor, // Set a custom color for the 'Accepted' radio button
                    ),
                    SizedBox(height: 10), // Add a gap between containers
                    buildRadioOption(
                      text: 'Declined',
                      value: 1,
                      selectedValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      decoration: BoxDecoration(
                        color: kTitleColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      activeColor: kMainColor, // Set a custom color for the 'Accepted' radio button
                    ),
                    SizedBox(height: 10), // Add a gap between containers
                    buildRadioOption(
                      text: 'Expired',
                      value: 2,
                      selectedValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      decoration: BoxDecoration(
                        color: kTitleColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      activeColor: kMainColor, // Set a custom color for the 'Accepted' radio button
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  if (selectedValue == 0) {
                    // Do something for 'Accepted'
                  } else if (selectedValue == 1) {
                    // Do something for 'Declined'
                  } else if (selectedValue == 2) {
                    // Do something for 'Expired'
                  }
                  Navigator.pop(context);
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessRequest()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kButtonTextColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120, right: 120, top: 13, bottom: 13),
                    child: AppText(
                      text: "Apply",
                      size: 2.1 * SizeConfigure.textMultiplier!,
                      color: kTitleColor,
                      fw: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    return result ?? false; // Return false if result is null (dialog dismissed)
  }

  Widget buildRadioOption({
    required String text,
    required int value,
    required int? selectedValue,
    required ValueChanged<int?> onChanged,
    required BoxDecoration decoration,
    Color? activeColor, // Add an optional parameter for the radio button color
  }) {
    return Container(
      decoration: decoration,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 2.0 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.w500,
                color: kButtonTextColor,
              ),
            ),
          ),
          SizedBox(width: 130),
          Radio<int>(
            value: value,
            groupValue: selectedValue,
            onChanged: onChanged,
            activeColor: activeColor, // Set the color of the radio button
          ),
        ],
      ),
    );
  }



}
