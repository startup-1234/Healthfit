import 'package:flutter/material.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/constant.dart';
import '../../../utilities/sizeconfigure.dart';

class DishesDetails extends StatefulWidget {
  const DishesDetails({super.key});

  @override
  State<DishesDetails> createState() => _DishesDetailsState();
}

class _DishesDetailsState extends State<DishesDetails> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height, // Set the desired height for your container
      child: ListView.builder(
          itemCount: DietList.length,
          itemBuilder: (context,int index){
            return Card(
              color: Colors
                  .transparent, // Set the card's background color to transparent
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding:
                    const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 2),
                    title: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              "assets/images/" + DietList[index]['image'],
                              height: 110,
                              fit: BoxFit.cover,

                            ),
                            SizedBox(
                              width: 160,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                                children: [
                                  AppText(
                                      text:
                                      DietList[index]['title'],
                                      fw: FontWeight.w500,
                                      size: 2.2*SizeConfigure.textMultiplier!,
                                      color: kTitleColor
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/Vectorline.png'),
                                      SizedBox(width: 5,),
                                      AppText(
                                          text:
                                          DietList[index]['time'],
                                          size: 1.6*SizeConfigure.textMultiplier!,
                                          color:kMainColor
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  AppText(
                                      text:
                                      DietList[index]['subtitle'],
                                      size: 1.7*SizeConfigure.textMultiplier!,
                                      fw: FontWeight.normal,
                                      color: Colors.grey
                                  ),
                                  AppText(
                                      text:
                                      DietList[index]['secondtitle'],
                                      size: 1.7*SizeConfigure.textMultiplier!,
                                      fw: FontWeight.normal,
                                      color: Colors.grey
                                  ),
                                  AppText(
                                      text:
                                      DietList[index]['thirdtitle'],
                                      size: 1.7*SizeConfigure.textMultiplier!,
                                      fw: FontWeight.normal,
                                      color:Colors.grey
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    ) ;
  }
}
