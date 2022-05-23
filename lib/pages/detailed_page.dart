// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/AppButtons.dart';
import 'package:travelapptest/widgets/app_large_text1.dart';
import 'package:travelapptest/widgets/app_text.dart';
import 'package:travelapptest/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenstar = 4;
  int current_index = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              //top: 50,
              child: Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/mountain.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              child: IconButton(
                // ignore: prefer_const_constructors
                icon: Icon(Icons.menu),
                onPressed: () {},
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargetext(
                          text: 'Yosemite',
                          color: Colors.black.withOpacity(.5),
                        ),
                        AppLargetext(
                          text: '2000 tk',
                          color: AppColors.mainColor.withOpacity(.8),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Apptext(
                          text: 'Usa, California',
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                Icons.star,
                                color: gottenstar > index
                                    ? AppColors.starColor
                                    : AppColors.textColor2,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Apptext(
                          text: '(' + gottenstar.toString() + ')',
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargetext(
                        text: 'People',
                        color: Colors.black.withOpacity(.8),
                        size: 20),
                    SizedBox(
                      height: 5,
                    ),
                    Apptext(
                      text: 'Number of people in your group',
                      color: AppColors.mainColor,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current_index = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: AppButton(
                              size: 50,
                              color: current_index == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundcolor: current_index == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              bordercolor: current_index == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargetext(
                      text: 'Description',
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Apptext(
                        text:
                            'You must go for a travel.Travels helps to get rid of pressure.Go to the mountains to see the nature')
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 10,
              right: 20,
              child: Row(children: [
                AppButton(
                  size: 60,
                  color: AppColors.textColor1,
                  backgroundcolor: AppColors.buttonBackground,
                  bordercolor: AppColors.textColor1,
                  IsIcon: true,
                  icon: Icons.favorite_border,
                ),
                SizedBox(
                  width: 20,
                ),
                ResponsiveButton(
                  isResponsive: true,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
