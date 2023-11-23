import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_experience_screen.dart';
import 'package:heathfit/Fitness_Person/Questionnaire_screen/fitness_gender_screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessAgePicker extends StatefulWidget {
  const FitnessAgePicker({super.key});

  @override
  State<FitnessAgePicker> createState() => _FitnessAgePickerState();
}

class _FitnessAgePickerState extends State<FitnessAgePicker> {
  late FixedExtentScrollController _heightController;
  late FixedExtentScrollController _daysController;
  late FixedExtentScrollController _yearController;

  List<String> heightItems =
  List.generate(12, (index) => (index + 1).toString());
  List<String> dayItems = List.generate(31, (index) => (index + 1).toString());
  List<String> yearItems =
  List.generate(44, (index) => (1980 + index).toString());

  String selectedHeight = '1';
  String selectedDay = '1';
  String selectedYear = '1980';

  @override
  void initState() {
    super.initState();
    _heightController = FixedExtentScrollController(initialItem: 0);
    _daysController = FixedExtentScrollController(initialItem: 0);
    _yearController = FixedExtentScrollController(initialItem: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 110),
          Center(
            child: Text(
              "How Old Are You?",
              style: TextStyle(
                fontSize: 2.9 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
          SizedBox(height: 80),
          Row(
            children: [
              SizedBox(width: 60),
              Expanded(
                child: Text("Date",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 2.2 * SizeConfigure.textMultiplier!,
                        fontWeight: FontWeight.normal)),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Text("Month", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 2.2 * SizeConfigure.textMultiplier!,
                    fontWeight: FontWeight.normal)),
              ),
              SizedBox(width: 40),
              Expanded(
                child: Text("Year", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 2.2 * SizeConfigure.textMultiplier!,
                    fontWeight: FontWeight.normal)),
              )
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 300,
            width: 300,
            child: Row(
              children: [
                Expanded(
                  child: ListWheelScrollView(
                    controller: _daysController,
                    itemExtent: 50,
                    perspective: 0.006,
                    physics: FixedExtentScrollPhysics(),
                    squeeze: 1.0,
                    useMagnifier: true,
                    magnification: 1.3,
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedDay = dayItems[index];
                        print('Selected Day: $selectedDay');
                      });
                    },
                    children: dayItems
                        .map((item) => WheelTile(
                        text: item, selected: item == selectedDay))
                        .toList(),
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: ListWheelScrollView(
                    controller: _heightController,
                    itemExtent: 50,
                    perspective: 0.006,
                    physics: FixedExtentScrollPhysics(),
                    squeeze: 1.0,
                    useMagnifier: true,
                    magnification: 1.3,
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedHeight = heightItems[index].toString();
                        print('Selected Height: $selectedHeight');
                      });
                    },
                    children: heightItems
                        .map((item) => WheelTile(
                        text: item.toString(),
                        selected: item.toString() == selectedHeight))
                        .toList(),
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: ListWheelScrollView(
                    controller: _yearController,
                    itemExtent: 50,
                    perspective: 0.006,
                    physics: FixedExtentScrollPhysics(),
                    squeeze: 1.0,
                    useMagnifier: true,
                    magnification: 1.3,
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedYear = yearItems[index];
                        print('Selected Year: $selectedYear');
                      });
                    },
                    children: yearItems
                        .map((item) => WheelTile(
                        text: item, selected: item == selectedYear))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessGenderScreen()));
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessExperienceScreen()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
                        child: AppText(
                          text: "Next ➤",
                          color: kButtonTextColor,
                          size:2.0 * SizeConfigure.textMultiplier!,
                          fw: FontWeight.w500,
                        ),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}

class WheelTile extends StatelessWidget {
  final bool selected;
  final String text;

  WheelTile({
    required this.selected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 15, right: 15),
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
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 15.8, // Default font size
                    color: selected ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FitnessAgePicker(),
  ));
}