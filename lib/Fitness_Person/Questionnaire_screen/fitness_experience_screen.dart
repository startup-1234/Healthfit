import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_age_picker.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_certified_screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessExperienceScreen extends StatefulWidget {
  const FitnessExperienceScreen({super.key});

  @override
  State<FitnessExperienceScreen> createState() => _FitnessExperienceScreenState();
}

class _FitnessExperienceScreenState extends State<FitnessExperienceScreen>{
  late FixedExtentScrollController _controller;

  List<String> items = List.generate(9, (index) => (index + 1).toString());
  String selectedState = '1'; // Initialize with the first item (130)

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          const SizedBox(height: 140),
          Center(
            child: Text(
              "What is your \n    Height?",
              style: TextStyle(
                fontSize: 2.9 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
          Container(
            height: 30.3 * SizeConfigure.textMultiplier!,
            width: 17.0 * SizeConfigure.textMultiplier!,
            margin: EdgeInsets.symmetric(vertical: 100),
            child: ListWheelScrollView(
              controller: _controller,
              itemExtent: 50,
              perspective: 0.003,
              physics: FixedExtentScrollPhysics(),
              squeeze: 1.0,
              useMagnifier: true,
              magnification: 1.3,
              onSelectedItemChanged: (index) {
                setState(() {
                  selectedState = items[index];
                  print('Selected Height: $selectedState');
                });
              },
              children: items
                  .map((item) => MyTile(text: item, selected: item == selectedState))
                  .toList(),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessAgePicker()));
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
              const SizedBox(
                width: 150,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessCertifiedScreen()));
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
}
class MyTile extends StatelessWidget {
  final String text;
  final bool selected;

  MyTile({required this.text, required this.selected});

  @override
  Widget build(BuildContext context) {
    final textColor = selected ? Colors.white : Colors.grey; // Define text color conditionally

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: selected ? Colors.yellow : Colors.transparent,
            width: 2,
          ),
          bottom: BorderSide(
            color: selected ? Colors.yellow : Colors.transparent,
            width: 2,
          ),
        ),
        color: Colors.black,
      ),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 36),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20.8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (selected)
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  ' Years',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 1.4*SizeConfigure.textMultiplier!
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
