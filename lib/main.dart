import 'package:flutter/material.dart';
import 'package:heathfit/User_person/BottomNavBar/mainscreen.dart';
import 'package:heathfit/User_person/signin_screen/signin_screen.dart';
import 'package:heathfit/utilities/sizeconfigure.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'Fitness_Person/fitness_provider/Fitness_MainscreenNotifier.dart';
import 'User_person/Onboarding_screen/onboarding_screen.dart';
import 'User_person/provider/MainScreenNotifier.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context)=>MainScreenNotifier()),
            ChangeNotifierProvider(create: (context)=>FitnessMainScreenNotifier()),
          ],
          child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfigure().init(constraints, orientation);
        return Sizer(builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // home:MyHomePage(),
            home:OnboardingScreen()
          );
        });
      });
    });
  }
}
