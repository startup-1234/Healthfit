import 'package:flutter/material.dart';
import 'package:heathfit/User_person/Homep_Page/Dietchart_Screen/today_diet.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/constant.dart';
import '../../../utilities/sizeconfigure.dart';
import '../service_screen.dart';
import 'OmniDateTimePicker.dart';

class DietPlanScreen extends StatefulWidget {
  final String title;

  const DietPlanScreen({Key? key,
    required this.title
  }) : super(key: key);

  @override
  State<DietPlanScreen> createState() => _DietPlanScreenState();
}

class _DietPlanScreenState extends State<DietPlanScreen> {

  DateTime _selectedDate = DateTime.now();

  List<String> _availableTimeSlots = [
    '9:00 AM ',
    '9:30 AM ',
    '10:00 AM ',
    '10:30 AM ',
    '11:00 AM ',
  ];

  Future<void> _selectDate(BuildContext context) async {
    DateTime picked = await showDialog(
      context: context,
      builder: (context) {
        return Theme(
          data: ThemeData.light().copyWith(
            dialogBackgroundColor: Color(0xff2C2C2E),
            textTheme: TextTheme(
              // Change text colors to white
              headline6: TextStyle(color: Colors.white), // Title text
              bodyText2: TextStyle(color: Colors.white), // Content text
            ),
          ),
          child: AlertDialog(
            content: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 1200,
                    height: 200,
                    child: CalendarDatePicker(
                      initialDate: _selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                      onDateChanged: (date) {
                        setState(() {
                          _selectedDate = date;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 0.8,
                    width: double.infinity,
                    color: Colors.black87,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 190),
                    child: Text(
                      'Time:',
                      style: TextStyle(
                        fontSize: 2.3 * SizeConfigure.textMultiplier!,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _availableTimeSlots.map((slot) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kMainColor,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          margin: EdgeInsets.only(right: 10),
                          height: 30,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              slot,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 1.7 * SizeConfigure.textMultiplier!,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ServiceScreen()));
                        },
                        child: Container(
                            height: 5.0 * SizeConfigure.textMultiplier!,
                            width: 5.0 * SizeConfigure.textMultiplier!,
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: kTitleColor,
                                size: 16,
                              ),
                            ))),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  AppText(
                    text: "Diet Plan",
                    size: 2.8 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.bold,
                    color: kTitleColor,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              const DatePicker(title: '',),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    AppText(
                      text: "Today's Diet",
                    size: 2.3*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                      color: kTitleColor,
                    ),
                    SizedBox(width: 120,),
                    InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                            height: 5.1*SizeConfigure.textMultiplier!,
                            width: 13.5*SizeConfigure.textMultiplier!,
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(Icons.date_range_rounded,color: kTitleColor,),
                                  SizedBox(width: 5,),
                                  AppText(
                                    text: "Date",
                                    color: kTitleColor,
                                    size: 2.0*SizeConfigure.textMultiplier!,
                                    fw: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ))),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: TodaysDiet(), // This is the widget that causes the overflow
              ),
            ],
          ),
        ),
      )

    );
  }
}