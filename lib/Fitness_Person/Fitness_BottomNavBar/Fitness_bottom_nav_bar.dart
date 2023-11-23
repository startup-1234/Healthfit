import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../fitness_provider/Fitness_MainscreenNotifier.dart';
import 'Fitness_bottom_nav_widget.dart';

class FitnessBottomNavBar extends StatefulWidget {
  const FitnessBottomNavBar({super.key});

  @override
  State<FitnessBottomNavBar> createState() => _FitnessBottomNavBarState();
}

class _FitnessBottomNavBarState extends State<FitnessBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FitnessMainScreenNotifier>(
        builder: (context, fitnessmainScreenNotifier, child){
          return SafeArea(
            child: Container(
                padding: const EdgeInsets.all(9),
                // margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: Color(0xff1C1C1E),
                    borderRadius: BorderRadius.all(Radius.circular(1))
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FitnessBottonNavWidget(
                      onTap: (){
                        fitnessmainScreenNotifier.pageIndex=0;
                      }, icon: fitnessmainScreenNotifier.pageIndex == 0
                        ? Icons.home
                        :Icons.home_outlined,
                    ),
                    FitnessBottonNavWidget(
                      onTap: (){
                        fitnessmainScreenNotifier.pageIndex=1;
                      },icon: fitnessmainScreenNotifier.pageIndex == 1
                        ? Icons.receipt_long
                        : Icons.receipt_long,
                    ),
                    FitnessBottonNavWidget(
                      onTap: (){
                        fitnessmainScreenNotifier.pageIndex=2;
                      },icon: fitnessmainScreenNotifier.pageIndex == 2
                        ? Icons.bar_chart
                        : Icons.leaderboard_outlined,
                    ),
                    FitnessBottonNavWidget(
                      onTap: (){
                        fitnessmainScreenNotifier.pageIndex=3;
                      },icon: fitnessmainScreenNotifier.pageIndex == 3
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
