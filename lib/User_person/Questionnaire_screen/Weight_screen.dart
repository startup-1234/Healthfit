import 'package:flutter/material.dart';
import 'package:heathfit/User_person/Questionnaire_screen/targer_weight_screen.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:wheel_slider/wheel_slider.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import 'height_screen.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {

  final int _totalCount = 180;
  final int _initValue = 50;
  int _currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
           SizedBox(height: 19.5 * SizeConfigure.heightMultiplier!),
          Center(
            child: Text(
              "What is your \n    Weight?",
              style: TextStyle(
                fontSize: 3.0 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
        SizedBox(height: 6.5 * SizeConfigure.heightMultiplier!,),
          Container(
            child: box(
              title: '',
              wheelSlider: WheelSlider(
                totalCount: _totalCount,
                initValue: _initValue,
                lineColor: kMainColor,
                perspective: 0.002,
                onValueChanged: (val) {
                  setState(() {
                    _currentValue = val;
                  });
                },
                hapticFeedbackType: HapticFeedbackType.vibrate,
                pointerColor: kMainColor,
              ),
            ),
          ),
          SizedBox(height: 26.0*SizeConfigure.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HeightSCrren()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          shape: BoxShape.circle
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_back,color: kTitleColor,),
                      )
                  )),
               SizedBox(
                width: 42.0*SizeConfigure.widthMultiplier!,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TargetWeightScreen()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
                        child: Center(
                            child: AppText(
                              text: "Next ➤",
                              color: kButtonTextColor,
                              size: 12,
                              fw: FontWeight.w500,
                            )),
                      )))
            ],
          ),
        ],
      ),
    );
  }

  Widget box({required String title, required WheelSlider wheelSlider, Text? valueText}) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(height: 10.0), // Reduce the gap from 20.0 to 10.0
          valueText ?? Container(),
          const SizedBox(height: 10.0), // Adjust the gap between the value and wheel slider
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_currentValue',
                style:  TextStyle(
                  fontSize: 5.3*SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.w500,
                  color: kTitleColor,
                ),
              ),
              Text(
                ' kg',
                style:  TextStyle(
                  fontSize:  2.2*SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.w300,
                  color: kTitleColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0), // Adjust the gap between the value and wheel slider
          wheelSlider,
        ],
      ),
    );
  }


}
