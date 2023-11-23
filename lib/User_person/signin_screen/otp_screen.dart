import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import '../login_page/login_page.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final otpkey = GlobalKey<FormState>();
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
  List<TextEditingController> textControllers =
      List.generate(6, (index) => TextEditingController());

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
            SizedBox(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/signimg5.png',
                    height: 56.6 * SizeConfigure.textMultiplier!,
                    width: 28 * SizeConfigure.textMultiplier!,
                  ),
                  Positioned(
                      top: 360,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "One Step Closer\n"
                          "  To Your Goals",
                          style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.8 * SizeConfigure.textMultiplier!,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 6.0 * SizeConfigure.textMultiplier!,
            ),
            Text(
              "OTP has been sent to this mobile,",
              style: TextStyle(
                  color: kTitleColor,
                  fontSize: 1.8 * SizeConfigure.textMultiplier!,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "+91 958 678 9503,",
                style: TextStyle(
                    color: kMainColor,
                    fontSize: 1.8 * SizeConfigure.textMultiplier!,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 6.0 * SizeConfigure.textMultiplier!,
            ),
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
                   SizedBox(
                    height: 1.5 * SizeConfigure.textMultiplier!,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.0 * SizeConfigure.textMultiplier!,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 22, right: 22, top: 13, bottom: 13),
                      child: AppText(
                        text: "Submit OTP ➤",
                        color: kButtonTextColor,
                        size: 1.7 * SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP(
      {bool? first,
      last,
      required TextEditingController controller,
      required FocusNode focusNode}) {
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
              fontSize: 12, fontWeight: FontWeight.bold, color: kTitleColor),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: kTitleColor, width: 1)),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: kTitleColor, width: 1),
            ),
            filled: true,
            isDense: true,
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: kTitleColor),
                borderRadius: BorderRadius.circular(4)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: kTitleColor),
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ),
    );
  }
}
