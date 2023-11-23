import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';
import 'name_screen.dart';

class DecideScreen extends StatefulWidget {
  const DecideScreen({Key? key}) : super(key: key);

  @override
  State<DecideScreen> createState() => _DecideScreenState();
}

class _DecideScreenState extends State<DecideScreen> {
  late FixedExtentScrollController _controller;
  List<String> items = ['Gain weight', 'Lose weight', 'Balanced'];
  String selectedState = 'Gain weight'; // Initialize with the first item

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 140),
            Center(
              child: Text(
                "What brings you\n     to this App?",
                style: TextStyle(
                  fontSize: 3.0 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.bold,
                  color: kTitleColor,
                ),
              ),
            ),
            Container(
              height: 30.3 * SizeConfigure.heightMultiplier!,
              width: 53.0* SizeConfigure.widthMultiplier!,
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
                    print('Selected State: $selectedState');
                  });
                },
                children: items
                    .map((item) => MyTile(text: item, selected: item == selectedState))
                    .toList(),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 190),
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NameScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                    child: Text(
                      'Next ➤',
                      style: TextStyle(
                        color: kButtonTextColor,
                        fontSize: 1.8 * SizeConfigure.textMultiplier!,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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

class MyTile extends StatelessWidget {
  final String text;
  final bool selected;

  MyTile({required this.text, required this.selected});

  @override
  Widget build(BuildContext context) {
    final textColor = selected ? Colors.white : Colors.grey; //
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: selected ? Colors.yellow : Colors.transparent,
            width: 2.5,
          ),
          bottom: BorderSide(
            color: selected ? Colors.yellow : Colors.transparent,
            width: 2.5,
          ),
        ),
        color: Colors.black,
      ),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20), // Adjust padding to move border away from the margin
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DecideScreen(),
  ));
}
