import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/app_large_text1.dart';
import 'package:travelapptest/widgets/app_text.dart';
import 'package:travelapptest/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/" + images[index]), fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargetext(text: 'Trips'),
                    Apptext(text: 'Mountain', size: 30),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: Apptext(
                        text:
                            "Mountian hikes give you an incredible sense of freedom along with endurance test",
                        color: AppColors.textColor2,
                        size: 14,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ResponsiveButton(),
                  ],
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
