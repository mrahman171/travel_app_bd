import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/app_button.dart';
import 'package:travelapptest/widgets/app_large_text1.dart';
import 'package:travelapptest/widgets/app_text.dart';
import 'package:travelapptest/widgets/responsive_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gottenStars = 4;
  int SelectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/mountain.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 280,
              child: Container(
                //margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargetext(
                          text: "Yosemite",
                          color: Colors.black.withOpacity(0.8),
                        ),
                        AppLargetext(
                          text: "\$ 250",
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Apptext(
                          text: "USA California",
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? AppColors.starColor
                                  : AppColors.textColor1,
                            );
                          }),
                        ),
                        Apptext(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AppLargetext(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Apptext(
                      text: "Number of people in your group",
                      color: AppColors.mainColor,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                SelectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: AppButtons(
                                size: 50,
                                color: SelectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                borderColor: SelectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                backgroundColor: SelectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppLargetext(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Apptext(
                      text:
                          "You must go for travel. Travelling helps get rid of pressure. Go to mountains to see the nature.",
                      color: AppColors.mainTextColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    size: 60,
                    color: AppColors.textColor2,
                    borderColor: Colors.white,
                    backgroundColor: AppColors.textColor1,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
