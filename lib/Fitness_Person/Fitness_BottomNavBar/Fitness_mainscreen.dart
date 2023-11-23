import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_Activity_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_request_screen.dart';
import 'package:provider/provider.dart';

import '../Fitness_Home_page/Fitness_home_page.dart';
import '../fitness_provider/Fitness_MainscreenNotifier.dart';
import 'Fitness_bottom_nav_bar.dart';

class FitnessMainScreen extends StatelessWidget {
  FitnessMainScreen({super.key});
  List<Widget> pageList = const[
    FitnessHomePage(),
    FitnessRequest(),
    FitnessActivity(),
    FitnessProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<FitnessMainScreenNotifier>(
      builder: (context, mainScreenNotifier, child){
        return  Scaffold(
          backgroundColor: const Color(0xffE2E2E2),

          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: FitnessBottomNavBar(),

        );
      },
    );
  }
}