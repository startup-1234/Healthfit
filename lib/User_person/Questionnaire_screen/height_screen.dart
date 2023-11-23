import 'package:flutter/material.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';
import 'Weight_screen.dart';
import 'age_picker_screen.dart';


class HeightSCrren extends StatefulWidget {
  const HeightSCrren({super.key});

  @override
  State<HeightSCrren> createState() => _HeightSCrrenState();
}

class _HeightSCrrenState extends State<HeightSCrren> {
  late FixedExtentScrollController _controller;

  List<String> items = List.generate(41, (index) => (index + 130).toString());
  String selectedState = '130'; // Initialize with the first item (130)

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
           SizedBox(height: 19.5 * SizeConfigure.heightMultiplier!),
      Center(
        child: Text(
          "What is your \n    Height?",
          style: TextStyle(
            fontSize: 3.0 * SizeConfigure.textMultiplier!,
            fontWeight: FontWeight.bold,
            color: kTitleColor,
          ),
        ),
      ),
      Container(
        height: 30.3 * SizeConfigure.heightMultiplier!,
        width: 28.0 * SizeConfigure.widthMultiplier!,
        margin: EdgeInsets.symmetric(vertical: 100),
        child: ListWheelScrollView(
          controller: _controller,
          itemExtent: 50,
          perspective: 0.001,
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
       SizedBox(height: 1.3 * SizeConfigure.heightMultiplier!),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AgePickerScreen()));
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
                  width: 41.5 * SizeConfigure.widthMultiplier!,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WeightScreen()));
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
                                size: 1.8*SizeConfigure.textMultiplier!,
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
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize:2.7 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (selected)
              Text(
                ' cm',
                style: TextStyle(
                  color: textColor,
                  fontSize: 1.3 * SizeConfigure.textMultiplier!
                ),
              ),
          ],
        ),
      ),
    );
  }
}

