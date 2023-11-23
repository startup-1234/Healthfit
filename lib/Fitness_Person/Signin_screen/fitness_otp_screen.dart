import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Login_screen/fitness_login_Screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessOtpScreen extends StatefulWidget {
  const FitnessOtpScreen({super.key});

  @override
  State<FitnessOtpScreen> createState() => _FitnessOtpScreenState();
}

class _FitnessOtpScreenState extends State<FitnessOtpScreen>{
  final  otpkey = GlobalKey<FormState>();
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
  List<TextEditingController> textControllers = List.generate(6, (index) => TextEditingController());

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 436,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 86),
                    child: Image.asset(
                      'assets/fitnessimages/fsignin1.png',
                      height: 416,
                      width: 200,
                    ),
                  ),
                  Positioned(
                      top: 330,
                      left: 80,
                      child: Text("      One ‘Rep’ More\nTo Start Your Journey",
                        style: TextStyle(
                          color: kTitleColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 2.8*SizeConfigure.textMultiplier!,
                        ),))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "OTP has been sent to this mobile,",
              style: TextStyle(
                  color: kTitleColor, fontSize: 13, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "+91 958 678 9503,",
                style: TextStyle(
                    color: kMainColor, fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              padding: const EdgeInsets.only(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i < 6; i++)
                        _textFieldOTP(
                          first: i == 0,
                          last: i == 5,
                          controller: textControllers[i],
                          focusNode: focusNodes[i],
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessLoginScreen()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 13,bottom: 13),
                      child: AppText(
                        text: "Submit OTP ➤",
                        color: kButtonTextColor,
                        size: 12,
                        fw: FontWeight.w500,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
  Widget _textFieldOTP({bool? first, last, required TextEditingController controller, required FocusNode focusNode}) {
    return SizedBox(
      height: 50,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextFormField(
          autofocus: false,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          cursorColor: const Color(0xffffffff),
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: kTitleColor),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: kTitleColor,width: 1)),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide:BorderSide(color:kTitleColor, width: 1),),

            filled: true,
            isDense: true,
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(width: 1, color: kTitleColor),
                borderRadius: BorderRadius.circular(4)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(width: 1, color: kTitleColor),
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ),
    );
  }
}