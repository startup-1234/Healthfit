import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_BottomNavBar/Fitness_mainscreen.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_home_page.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_certified_screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessSpecialiseScreen extends StatefulWidget {
  const FitnessSpecialiseScreen({super.key});

  @override
  State<FitnessSpecialiseScreen> createState() => _FitnessSpecialiseScreenState();
}

class _FitnessSpecialiseScreenState extends State<FitnessSpecialiseScreen> {
  late FixedExtentScrollController _Controllers;

    List<String> items = ['Cardio', 'Zumba', 'Strength Training', 'Weight Lift', 'Yoga'];
  int selectedStateIndex = 0; // Initialize with the first item selected

  @override
  void initState() {
    super.initState();
    _Controllers = FixedExtentScrollController(initialItem: 0);
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
              "Areas You Have\n  Specialized in",
              style: TextStyle(
                fontSize: 2.9 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
          Container(
            height: 30.3 * SizeConfigure.textMultiplier!,
            width: 34.0 * SizeConfigure.textMultiplier!,
            margin: EdgeInsets.symmetric(vertical: 100),
            child: ListWheelScrollView(
              controller: _Controllers,
              itemExtent: 50,
              perspective: 0.001,
              physics: FixedExtentScrollPhysics(),
              squeeze: 1.0,
              useMagnifier: true,
              magnification: 1.3,
              onSelectedItemChanged: (index) {
                setState(() {
                  selectedStateIndex = index;
                  print('Selected Height: ${items[index]}');
                });
              },
              children: List.generate(items.length, (index) {
                return MyTile(
                  text: items[index],
                  selected: selectedStateIndex == index,
                  onChanged: () {
                    setState(() {
                      selectedStateIndex = index;
                    });
                  },
                );
              }),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessCertifiedScreen()));
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessMainScreen()));
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

class MyTile extends StatefulWidget {
  final String text;
  final bool selected;
  final VoidCallback onChanged;

  MyTile({required this.text, required this.selected, required this.onChanged});

  @override
  _MyTileState createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {
  bool _showRadio = false;

  @override
  Widget build(BuildContext context) {
    final textColor = widget.selected ? Colors.white : Colors.grey; // Define text color conditionally

    return GestureDetector(
      onTap: () {
        setState(() {
          _showRadio = !_showRadio;
        });
        widget.onChanged();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: widget.selected ? Colors.yellow : Colors.transparent,
              width: 2,
            ),
            bottom: BorderSide(
              color: widget.selected ? Colors.yellow : Colors.transparent,
              width: 2,
            ),
          ),
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 20),
            Text(
              widget.text,
              style: TextStyle(
                color: textColor,
              ),
            ),
            SizedBox(width: 5),
            if (_showRadio && widget.selected)
              Radio(
                value: widget.selected,
                activeColor: kMainColor,
                groupValue: true,
                onChanged: (_) {
                  widget.onChanged();
                },
              ),
          ],
        ),
      ),
    );
  }
}
