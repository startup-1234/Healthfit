import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/fitness_request_details.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/request_accepted_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/request_history_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen/request_pending_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Models/model.dart';
import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessRequest extends StatefulWidget {
  const FitnessRequest({super.key});

  @override
  State<FitnessRequest> createState() => _FitnessRequestState();
}

class _FitnessRequestState extends State<FitnessRequest> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kButtonTextColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Ensure children stretch horizontally.
          children: [
            SizedBox(height: 58),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Requests",
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
            Column(
              children: [
                TabBar(
                  indicatorColor: kMainColor,
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                  Tab(
                    text: 'Pending',
                  ),
                  Tab(
                    text: 'Accepted',
                  ),
                  Tab(
                    text: 'History',
                  ),
                ])
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                 const RequestPending(),
                  const RequestAccepted(),
                  const RequestHistory(),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

