import 'package:flutter/material.dart';
import 'package:heathfit/Models/model.dart';
import 'package:heathfit/utilities/constant.dart';
import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import 'Dietchart_Screen/Dietplan_Screen.dart';
import 'Fitness_Screen/consult_fitness_coach.dart';
import 'Nutrition_Screen/consult_nutritionist.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height:65,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: AppText(
                  text: "Services",
                  size: 3.5 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.bold,
                  color: kTitleColor,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height, // Set the desired height for your container
                margin: const EdgeInsets.symmetric(horizontal: 22.0),
                color: Colors.transparent,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: serviceList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          // Navigate to the first page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConsultFitnessCoach(),
                            ),
                          );
                        } else if (index == 1) {
                          // Navigate to the second page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConsultNutritionist(),
                            ),
                          );
                        } else if (index == 2) {
                          // Navigate to the third page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DietPlanScreen(title: '',),
                            ),
                          );
                        }
                      },
                      child: Stack(
                        children: [
                          Card(
                            color: Colors
                                .transparent, // Set the card's background color to transparent
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/images/" + serviceList[index]['image'],
                              height: 132,
                              width: 355,
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 20,
                            child: Text(
                              serviceList[index]['title'],
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontSize: 2.7 * SizeConfigure.textMultiplier!,
                                  fontWeight: FontWeight
                                      .w600 // Adjust the font size as needed
                                  ),
                            ),
                          ),
                          Positioned(
                            top: 95,
                            left: 20,
                            child: Text(
                              serviceList[index]['subtitle'],
                              style: TextStyle(
                                  color: kMainColor,
                                  fontSize: 2.1 * SizeConfigure.textMultiplier!,
                                  fontWeight: FontWeight
                                      .w400 // Adjust the font size as needed
                                  ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
