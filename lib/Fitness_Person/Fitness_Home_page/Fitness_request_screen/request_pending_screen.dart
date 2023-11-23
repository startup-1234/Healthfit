import 'package:flutter/material.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/constant.dart';
import '../../../utilities/sizeconfigure.dart';
import '../../Fitness_model/fitness_model.dart';

class RequestPending extends StatefulWidget {
  const RequestPending({super.key});

  @override
  State<RequestPending> createState() => _RequestPendingState();
}

class _RequestPendingState extends State<RequestPending> {
  int selectedCloseIconIndex = -1;
  int selectedCheckIconIndex = -1; // Initially, no card is selected.

  void selectCloseIcon(int index) {
    setState(() {
      selectedCloseIconIndex = index;
    });
  }

  void selectCheckIcon(int index) {
    setState(() {
      selectedCheckIconIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Container(
                  height: 5.6 * SizeConfigure.textMultiplier!,
                  width: 280,
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
        ),
        Expanded(
          child: ListView.builder(
            itemCount: FitnessrequestList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {

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
                                    FitnessrequestList[index]['image'],
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
                                          child: AppText(
                                            text: FitnessrequestList[index]['name'],
                                            fw: FontWeight.w400,
                                            size: 2.1 * SizeConfigure.textMultiplier!,
                                            color: kTitleColor,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        AppText(
                                          text: FitnessrequestList[index]['subtitle'],
                                          size: 1.6 * SizeConfigure.textMultiplier!,
                                          color: kMainColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedCloseIconIndex = index;
                                      });
                                    },
                                    child: Container(
                                      height: 5.0 * SizeConfigure.textMultiplier!,
                                      width: 4.5 * SizeConfigure.textMultiplier!,
                                      decoration: BoxDecoration(
                                        color: selectedCloseIconIndex == index ? Color(0xffFF4F4F) : Color(0xff1A1A1A), // Change the background color based on selection
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: selectedCloseIconIndex == index ? Colors.red : Colors.transparent, // Change the border color to red if it's selected
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.close,
                                        color: selectedCloseIconIndex == index ? Colors.white : Color(0xffFF4F4F), // Change the icon color to white when selected
                                        size: 16,
                                      ),
                                    ),
                                  ),


                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedCheckIconIndex = index;
                                      });
                                    },
                                    child: Container(
                                        height: 5.0 * SizeConfigure.textMultiplier!,
                                        width: 4.5 * SizeConfigure.textMultiplier!,
                                        decoration: BoxDecoration(
                                            color: selectedCheckIconIndex == index ? kMainColor : Color(0xff1A1A1A), // Change the background color based on selection
                                            shape: BoxShape.circle,
                                          border: Border.all(
                                            color: selectedCheckIconIndex == index ? kMainColor : Colors.transparent, // Change the border color to red if it's selected
                                          ),),
                                        child: Icon(
                                          Icons.check,
                                          color: selectedCheckIconIndex == index ? kButtonTextColor: kMainColor, // Change the icon color to white when selected
                                          size: 16,
                                        )),
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
}
