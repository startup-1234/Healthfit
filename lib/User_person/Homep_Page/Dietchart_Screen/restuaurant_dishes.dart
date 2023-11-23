import 'package:flutter/material.dart';
import 'package:heathfit/User_person/Homep_Page/Dietchart_Screen/restaurant_dishes_details.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../../Widgets/app_text.dart';
import '../../../utilities/sizeconfigure.dart';
import 'Orderfood_screen.dart';

class RestaurantsDishes extends StatefulWidget {
  const RestaurantsDishes({super.key});

  @override
  State<RestaurantsDishes> createState() => _RestaurantsDishesState();
}

class _RestaurantsDishesState extends State<RestaurantsDishes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height: 45,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OrderFoodScreen()));
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
                text: "Order Food",
                size: 2.8 * SizeConfigure.textMultiplier!,
                fw: FontWeight.bold,
                color: kTitleColor,
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Container(
                  height: 5.6*SizeConfigure.textMultiplier!,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xff232323),
                      borderRadius: BorderRadius.all(Radius.circular(30),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        AppText(
                          text: "Search Dishes or Restaurants",
                          color: Color(0xff505050),
                          size: 2.0*SizeConfigure.textMultiplier!,
                          fw: FontWeight.w300,
                        ),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search,
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: AppText(text: "Dishes",
              size: 2.2*SizeConfigure.textMultiplier!,
              fw: FontWeight.w500,
              color: kTitleColor,),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: RestaurantDishesDetails(), // This is the widget that causes the overflow
          ),
        ],
      ),
    );
  }
}
