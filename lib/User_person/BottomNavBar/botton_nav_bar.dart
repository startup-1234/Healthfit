import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:provider/provider.dart';

import '../provider/MainScreenNotifier.dart';
import 'botton_nav_widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child){
          return SafeArea(
            child: Container(
                padding: const EdgeInsets.all(9),
                // margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: Color(0xff1C1C1E),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottonNavWidget(
                      onTap: (){
                        mainScreenNotifier.pageIndex=0;
                      }, icon: mainScreenNotifier.pageIndex == 0
                        ? Icons.home
                        :Icons.home_outlined,
                    ),
                    BottonNavWidget(
                      onTap: (){
                        mainScreenNotifier.pageIndex=1;
                      },icon: mainScreenNotifier.pageIndex == 1
                        ? Icons.grid_view_rounded
                        : Icons.grid_view,
                    ),
                    BottonNavWidget(
                      onTap: (){
                        mainScreenNotifier.pageIndex=2;
                      },icon: mainScreenNotifier.pageIndex == 2
                        ? Icons.bar_chart_rounded
                        : Icons.bar_chart,
                    ),
                    BottonNavWidget(
                      onTap: (){
                        mainScreenNotifier.pageIndex=3;
                      },icon: mainScreenNotifier.pageIndex == 3
                        ? Icons.person
                        : Icons.person_outline,
                    ),

                  ],
                )
            ),

          );
        }
    );
  }
}
