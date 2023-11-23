import 'package:flutter/material.dart';
import 'package:heathfit/User_person/Questionnaire_screen/targer_weight_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import '../signin_screen/signin_screen.dart';


class MedicalCondition extends StatefulWidget {
  const MedicalCondition({super.key});

  @override
  State<MedicalCondition> createState() => _MedicalConditionState();
}

class _MedicalConditionState extends State<MedicalCondition> {
  late FixedExtentScrollController _controller;

  List<String> items = ['Allergic', 'Diabetes', 'Cholestrol', 'Asthma', 'None'];
  int selectedStateIndex = 0; // Initialize with the first item selected

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
              "Any Medical\n  Condition?",
              style: TextStyle(
                fontSize: 3.0 * SizeConfigure.textMultiplier!,
                fontWeight: FontWeight.bold,
                color: kTitleColor,
              ),
            ),
          ),
          Container(
            height: 30.3 * SizeConfigure.heightMultiplier!,
            width: 64.0 * SizeConfigure.widthMultiplier!,
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
           SizedBox(height: 1.5 * SizeConfigure.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TargetWeightScreen()));
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
                width: 42.0 * SizeConfigure.widthMultiplier!,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen()));
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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 14.0 * SizeConfigure.widthMultiplier!,),
            Text(
              widget.text,
              style: TextStyle(
                color: textColor,
              ),
            ),
            SizedBox(width: 2.0 * SizeConfigure.widthMultiplier!,),
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

