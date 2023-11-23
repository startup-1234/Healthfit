import 'package:flutter/material.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/constant.dart';
import '../../../utilities/sizeconfigure.dart';
import '../../Fitness_model/fitness_model.dart';
import 'fitness_request_details.dart';

class RequestAccepted extends StatefulWidget {
  const RequestAccepted({super.key});

  @override
  State<RequestAccepted> createState() => _RequestAcceptedState();
}

class _RequestAcceptedState extends State<RequestAccepted> {
  int? passIndex;
  @override
  Widget build(BuildContext context) {
    return  Column(
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
            itemCount: FitnessrequestLists.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  passIndex=index;
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessRequestDetails(
                    pass_index:passIndex,
                    name:  FitnessrequestLists[index]['name'],
                    subtitle:  FitnessrequestLists[index]['subtitle'],

                  )));
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
                                    FitnessrequestLists[index]['image'],
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
                                            text: FitnessrequestLists[index]['name'],
                                            fw: FontWeight.w400,
                                            size: 2.1 * SizeConfigure.textMultiplier!,
                                            color: kTitleColor,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        AppText(
                                          text: FitnessrequestLists[index]['subtitle'],
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
}
