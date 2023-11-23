import 'dart:async';
import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../Fitness_Person/Fitness_model/fitness_model.dart';
import '../../Models/model.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class NutritionOnboardingScreen extends StatefulWidget {
  const NutritionOnboardingScreen({super.key});

  @override
  State<NutritionOnboardingScreen> createState() => _NutritionOnboardingScreenState();
}

class _NutritionOnboardingScreenState extends State<NutritionOnboardingScreen> {
  final PageController _pageViewController = PageController(initialPage: 0);
  late Timer _timer;
  int _activePage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_activePage < NutritiononbordimgList.length - 1) {
        _activePage++;
      } else {
        _activePage = 0;
      }

    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageViewController,
              itemCount: FitnessonbordimgList.length,
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page.toInt(); // Update _activePage when the page changes
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            NutritiononbordimgList[index],
                            width: MediaQuery.of(context).size.width,
                            height: 800, // Specify a fixed height for the Image
                          ),
                          BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0), // Adjust blur as needed
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [Colors.black.withOpacity(0.98), Colors.transparent],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom:120,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Text(
                            NutritiononbordContants[index],
                            textAlign: TextAlign.center,
                            style: kTextStyle.copyWith(
                              // letterSpacing: 1.0,

                              fontWeight: FontWeight.bold,
                              fontSize: 2.4 *  SizeConfigure.textMultiplier!,
                              color: kTitleColor,
                              height: 1.6,
                            ),
                          ),
                          SizedBox(height: 5.0 *SizeConfigure.heightMultiplier!,),
                          DotsIndicator(
                            dotsCount: onbordimgList.length,
                            position: _activePage.toInt(),
                            decorator: DotsDecorator(
                              activeColor: Color(0xffD0FD3E),
                              size: const Size.square(6.0),
                              activeSize: const Size(20.0, 6.0),
                              activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (index == 0 || index == 1 ) {
                                _pageViewController.nextPage(
                                  duration: const Duration(milliseconds: 350),
                                  curve: Curves.easeIn,
                                );
                              } else if (index == 2) {
                                // Handle button click on the third page
                                _navigateToHomePage();

                                setState(() {
                                  _activePage = onbordimgList.length -1.toInt();
                                });
                                _pageViewController.jumpToPage(_activePage.toInt());
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: kMainColor,
                              shape: index == 2
                                  ? RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              )
                                  : CircleBorder(),
                              padding: EdgeInsets.all(16),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: index == 2 ? 150 : 0,
                                  height: index == 2 ? 19 : 0,// Adjust the width as needed
                                  child: Center(
                                    child: Text(
                                      index == 2 ? "Start your Journey   ➤" : "",
                                      style: kTextStyle.copyWith(
                                        fontSize: 1.3 * SizeConfigure.textMultiplier!,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                if (index < 2)
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _showMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              title: Center(
                child: Text(
                  'Allow “HealthFit” to use \n your location ?',
                  textAlign: TextAlign.center,
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 1.5 *  SizeConfigure.textMultiplier!,
                    letterSpacing: 0.8,
                    color: Colors.black,
                  ),
                ),
              ),
              content: Container(
                width: 250.0,
                height: 100.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: InkWell(
                  onTap: (){
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //   builder: (context) => SignInScreen(),
                    // )
                    // );


                  },
                  child: Column(
                      children: <Widget>[
                        Text(
                          "Allow Once",
                          style: kTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 1.5 *  SizeConfigure.textMultiplier!,
                            color: Colors.blue,
                          ),
                        ),
                        Divider(),
                        Text(
                            "Allow While Using App ",
                            textAlign: TextAlign.center,
                            style: kTextStyle.copyWith(
                              fontSize: 1.5 *  SizeConfigure.textMultiplier!,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,)),
                        Divider(),
                        Text(
                            "Don’t Allow",
                            textAlign: TextAlign.center,
                            style: kTextStyle.copyWith(
                              fontSize: 1.5 *  SizeConfigure.textMultiplier!,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            )),
                      ]),
                ),
              ));
        });
  }

  void _navigateToHomePage() {
    _showMyDialog();
    // Navigator.of(context).pushReplacement(MaterialPageRoute(
    //   builder: (context) => HomePage(),
    // )
    // );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('This is the home page.'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NutritionOnboardingScreen(),
  ));
}