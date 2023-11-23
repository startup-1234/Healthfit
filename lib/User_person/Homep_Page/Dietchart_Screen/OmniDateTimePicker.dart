import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:heathfit/utilities/date_util.dart' as date_util;

import '../../../utilities/color_utility.dart';
import '../../../utilities/sizeconfigure.dart';

class DatePicker extends StatefulWidget {
  final String title;
  const DatePicker({super.key,required this.title});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = [];
  DateTime currentDateTime = DateTime.now();


  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
  }



  Widget titleView() {
    return Padding(
      padding: const EdgeInsets.only(left: 30,bottom: 20),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                // Navigator.of(context).pop();
              },
              child: Container(
                  height: 5.0 * SizeConfigure.textMultiplier!,
                  width: 5.0 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kTitleColor,
                      size: 16,
                    ),
                  ))),
          SizedBox(width: 50,),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              date_util.DateUtils.months[currentDateTime.month - 1] +
                  ' ' +
                  currentDateTime.year.toString(),
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(width: 50,),
          InkWell(
              onTap: () {
                // Navigator.of(context).pop();
              },
              child: Container(
                  height: 5.0 * SizeConfigure.textMultiplier!,
                  width: 5.0 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: kTitleColor,
                      size: 16,
                    ),
                  ))),
        ],
      ),
    );
  }

  Widget horizontalCapsuleListView() {
    return Container(
      width: width,
      height: 70,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentMonthList.length,
        itemBuilder: (BuildContext context, int index) {
          return capsuleView(index);
        },
      ),
    );
  }

  Widget capsuleView(int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentDateTime = currentMonthList[index];
          });
        },
        child: Container(
          width: 45,
          height: 70,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: (currentMonthList[index].day != currentDateTime.day)
                  ? [
                Colors.grey.withOpacity(0.8),
                Colors.grey.withOpacity(0.7),
                Colors.grey.withOpacity(0.6),
              ]
                  : [
                HexColor("D0FD3E"),
                HexColor("D0FD3E"),
                HexColor("D0FD3E"),
              ],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  date_util.DateUtils
                      .weekdays[currentMonthList[index].weekday - 1],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: (currentMonthList[index].day != currentDateTime.day)
                        ?Colors.white
                        : Colors.black,
                  ),
                ),
                Text(
                  currentMonthList[index].day.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: (currentMonthList[index].day != currentDateTime.day)
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topView() {
    return Container(
      height: height * 0.25,
      width: width,
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          titleView(),
          horizontalCapsuleListView(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        topView(),
      ],
    );
  }
}
