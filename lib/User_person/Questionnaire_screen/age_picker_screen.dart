import 'package:flutter/material.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';
import 'gender_screen.dart';
import 'height_screen.dart';


class AgePickerScreen extends StatefulWidget {
  const AgePickerScreen({Key? key}) : super(key: key);

  @override
  State<AgePickerScreen> createState() => _AgePickerScreenState();
}

class _AgePickerScreenState extends State<AgePickerScreen> {
  late FixedExtentScrollController _heightController;
  late FixedExtentScrollController _dayController;
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
    _dayController = FixedExtentScrollController(initialItem: 0);
    _yearController = FixedExtentScrollController(initialItem: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
           SizedBox(height: 15.5 *SizeConfigure.heightMultiplier!),
          Center(
            child: Text(
              "How Old Are You?",
              style: TextStyle(
                fontSize: 3.0 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
          SizedBox(height: 11.0 *SizeConfigure.heightMultiplier!),
          Row(
            children: [
              SizedBox(width:  17.5 *SizeConfigure.widthMultiplier!),
              Expanded(
                child: Text("Date",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 2.2 * SizeConfigure.textMultiplier!,
                        fontWeight: FontWeight.normal)),
              ),
              SizedBox(width:  8.0 *SizeConfigure.widthMultiplier!),
              Expanded(
                child: Text("Month", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 2.2 * SizeConfigure.textMultiplier!,
                    fontWeight: FontWeight.normal)),
              ),
              SizedBox(width: 10.0 *SizeConfigure.widthMultiplier!),
              Expanded(
                child: Text("Year", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 2.2 * SizeConfigure.textMultiplier!,
                    fontWeight: FontWeight.normal)),
              )
            ],
          ),
          SizedBox(height: 4.5 *SizeConfigure.heightMultiplier!),
          Container(
            height: 42.0 *SizeConfigure.heightMultiplier!,
            width: 83.0 *SizeConfigure.widthMultiplier!,
            child: Row(
              children: [
                Expanded(
                  child: ListWheelScrollView(
                    controller: _dayController,
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
                SizedBox(width:4.5*SizeConfigure.widthMultiplier! ),
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
                SizedBox(width: 4.5*SizeConfigure.widthMultiplier! ),
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
            height: 7.5*SizeConfigure.heightMultiplier!,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GenderScreen()));
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HeightSCrren()));
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
              height: 6.9*SizeConfigure.heightMultiplier!,
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
                    fontSize: 2.2*SizeConfigure.textMultiplier!, // Default font size
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
    home: AgePickerScreen(),
  ));
}
