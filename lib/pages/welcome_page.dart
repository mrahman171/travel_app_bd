import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/cubit/app_cubit.dart';
<<<<<<< HEAD
=======
=======
// ignore: implementation_imports
>>>>>>> c182c4fbfe743918517b501bee7dae5012156e3f
>>>>>>> 9e863cd8b464f427080aa5cea771d5ec28cc64e1
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/app_large_text1.dart';
import 'package:travelapptest/widgets/app_text.dart';
import 'package:travelapptest/widgets/responsive_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // ignore: non_constant_identifier_names
  double selected_page(index, dotIndex) {
    if (index == dotIndex) {
      return 20;
    } else {
      return 8;
    }
  }

  // ignore: non_constant_identifier_names
  Color selected_color(index, dotIndex) {
    if (index == dotIndex) {
      return AppColors.mainColor.withOpacity(.9);
    } else {
      return AppColors.mainColor.withOpacity(.2);
    }
  }

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
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargetext(text: 'Trips'),
                        Apptext(text: 'Mountain', size: 30),
                        const SizedBox(
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
                        const SizedBox(
                          height: 40,
                        ),
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 9e863cd8b464f427080aa5cea771d5ec28cc64e1
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubits>(context).getData();
                          },
                          child: Container(
                            width: 200,
                            child: Row(
                              children: [
                                ResponsiveButton(
                                  width: 100,
                                )
                              ],
                            ),
                          ),
<<<<<<< HEAD
=======
=======
                        ResponsiveButton(
                          width: 150,
>>>>>>> c182c4fbfe743918517b501bee7dae5012156e3f
>>>>>>> 9e863cd8b464f427080aa5cea771d5ec28cc64e1
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(images.length, (dotIndex) {
                        return Container(
                          width: 8,
                          height: selected_page(index, dotIndex),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: selected_color(index, dotIndex),
                          ),
                        );
                      }),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
