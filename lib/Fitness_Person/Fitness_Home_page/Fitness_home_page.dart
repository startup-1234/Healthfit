import 'package:flutter/material.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessHomePage extends StatefulWidget {
  const FitnessHomePage({super.key});

  @override
  State<FitnessHomePage> createState() => _FitnessHomePageState();
}

class _FitnessHomePageState extends State<FitnessHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 58,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: AppText(
                      text: "Hello John",
                      size: 3.5 * SizeConfigure.textMultiplier!,
                      fw: FontWeight.bold,
                      color: kTitleColor,
                    ),
                  ),
                  SizedBox(width: 150,),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180, top: 5),
                child: AppText(
                  text: "Good Morning",
                  size: 2.3 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w200,
                  color: kTitleColor,
                ),
              ),
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 19.0 * SizeConfigure.textMultiplier!,
                  width: 41.9 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Container(
                  height: 4.0 * SizeConfigure.textMultiplier!,
                  width: 15.0 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Container(
                      height: 18.0 * SizeConfigure.textMultiplier!,
                      width: 20.0 * SizeConfigure.textMultiplier!,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Container(
                      height: 18.0 * SizeConfigure.textMultiplier!,
                      width: 20.0 * SizeConfigure.textMultiplier!,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Container(
                  height: 4.0 * SizeConfigure.textMultiplier!,
                  width: 15.0 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Container(
                      height: 95,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    height: 95,
                    width: 95,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Container(
                      height: 95,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
