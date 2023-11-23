import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Homep_Page/Activity_screen.dart';
import '../Homep_Page/home_page.dart';
import '../Homep_Page/profile_screen.dart';
import '../Homep_Page/service_screen.dart';
import '../provider/MainScreenNotifier.dart';
import 'botton_nav_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pageList = const[
    HomePage(),
    ServiceScreen(),
    ActivityScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child){
        return  Scaffold(
          backgroundColor: const Color(0xffE2E2E2),

          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: BottomNavBar(),

        );
      },
    );
  }
}
