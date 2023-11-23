import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Fitness_Home_page/Fitness_profile_screen.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';

class FitnessTransactionScreen extends StatefulWidget {
  const FitnessTransactionScreen({super.key});

  @override
  State<FitnessTransactionScreen> createState() => _FitnessTransactionScreenState();
}

class _FitnessTransactionScreenState extends State<FitnessTransactionScreen>  {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FitnessProfile()));
                        },
                        child: Container(
                            height: 4.5 * SizeConfigure.textMultiplier!,
                            width: 4.5 * SizeConfigure.textMultiplier!,
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
                    text: "Transactions",
                    size: 2.8 * SizeConfigure.textMultiplier!,
                    fw: FontWeight.bold,
                    color: kTitleColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Container(
                      height: 5.6 * SizeConfigure.textMultiplier!,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xff232323),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            AppText(
                              text: "Search Dates or Payments",
                              color: Color(0xff505050),
                              size: 2.0 * SizeConfigure.textMultiplier!,
                              fw: FontWeight.w400,
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.search,
                                color: Color(0xff454545),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    AppText(
                      text: "August",
                      size: 2.1 * SizeConfigure.textMultiplier!,
                      fw: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/frame.png',
                                  color: kMainColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                AppText(
                                  text: "Select Date",
                                  color: kMainColor,
                                  size: 2.0 * SizeConfigure.textMultiplier!,
                                  fw: FontWeight.w400,
                                ),
                              ],
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height:MediaQuery.of(context).size.height *0.80,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(), // Disable scrolling
                  itemCount: TransactionList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Card(
                        color: Color(0xff232323),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child:Icon(Icons.circle_rounded,
                                  size: 8,
                                  color: kMainColor,),
                              ),
                              SizedBox(width: 15,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: AppText(
                                        text: TransactionList[index]['title'],
                                        fw: FontWeight.w400,
                                        size: 2.0 * SizeConfigure.textMultiplier!,
                                        color: kTitleColor,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      child: AppText(
                                        text: TransactionList[index]['datetime'],
                                        size: 1.8 * SizeConfigure.textMultiplier!,
                                        fw: FontWeight.normal,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: AppText(
                                  text: TransactionList[index]['amount'],
                                  size: 2.0 * SizeConfigure.textMultiplier!,
                                  fw: FontWeight.w500,
                                  color: kMainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
              ),
              Row(
                children: [
                  Icon(Icons.circle_rounded,
                    size: 8,
                    color: kMainColor,),
                  SizedBox(width: 10,),
                  AppText(text: 'Diet plan from Fitness Coach',
                    size: 1.9*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kTitleColor,),
                  SizedBox(width: 70,),
                  AppText(text: '6:45 AM',
                    size: 1.6*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w500,
                    color: kTitleColor,)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: AppText(text: "Arun KT prescribed a diet plan",
                  color: kTitleColor,
                  size: 1.8*SizeConfigure.textMultiplier!,),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: kGreyTextColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
