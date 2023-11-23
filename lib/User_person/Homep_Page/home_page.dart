import 'package:flutter/material.dart';
import 'package:heathfit/Widgets/app_text.dart';

import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _showMoreOptions(BuildContext context) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      items: <PopupMenuEntry>[
        PopupMenuItem(
          child: ListTile(
            title: Text("Start New Tenure"),
            onTap: () {
              // Handle the option 1 action.
              Navigator.pop(context);
            },
          ),
        ),
        PopupMenuDivider(), // Use PopupMenuDivider to create a divider.
        PopupMenuItem(
          child: ListTile(
            title: Text("Withdraw Tenure"),
            onTap: () {
              // Handle the option 2 action.
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 58,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Padding(
                padding:EdgeInsets.only(left: 10 * SizeConfigure.widthMultiplier! ),
                child: AppText(
                  text: "Hello John",
                  size: 3.5 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.bold,
                  color: kTitleColor,
                ),
              ),

                  PopupMenuButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onSelected: (value) {
                      // Handle menu item selection if needed.
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry>[
                        PopupMenuItem(
                          value: 1,
                          child: Text("Start New Tenure"),
                        ),
                        PopupMenuDivider(),
                        PopupMenuItem(
                          value: 2,
                          child: Text("Withdraw Tenure"),
                        ),
                      ];
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: AppText(
                      text: "Good Morning",
                      size: 2.3 * SizeConfigure.textMultiplier!,
                      fw: FontWeight.w200,
                      color: kTitleColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Container(
                  height: 19.0 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 4.0 * SizeConfigure.textMultiplier!,
                  width: 15.0 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(flex: 2,
                      child:Container(
                        height: 18.0 * SizeConfigure.textMultiplier!,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                     SizedBox(width: 12),
                    Expanded(
                    flex: 2,
                      child: Container(
                        height: 18.0 * SizeConfigure.textMultiplier!,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 4.0 * SizeConfigure.textMultiplier!,
                  width: 15.0 * SizeConfigure.textMultiplier!,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: AppText(
                  text: "Order Food",
                  size: 20,
                fw: FontWeight.w500,
                color: kTitleColor,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
