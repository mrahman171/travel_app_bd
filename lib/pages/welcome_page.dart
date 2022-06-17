import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapptest/cubits/app_cubits.dart';
// ignore: implementation_imports
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/app_large_text1.dart';
import 'package:travelapptest/widgets/app_text.dart';
import 'package:travelapptest/widgets/responsive_button.dart';
import 'package:travelapptest/cubits/app_cubits.dart';

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

  final CollectionReference _places =
      FirebaseFirestore.instance.collection('Places_info');

  // ignore: non_constant_identifier_names
  Color selected_color(index, dotIndex) {
    if (index == dotIndex) {
      return AppColors.mainColor.withOpacity(.9);
    } else {
      return AppColors.mainColor.withOpacity(.2);
    }
  }

  List Place_description = ["Mountain", "Sea", "Lake", "Waterfall", "Forest"];
  List place_quote = [
    "There\’s nothing quite like an adventure in the mountains, being surrounded by nature\’s giants. The achievement of reaching the summit, the epic views along the way, the feeling of weightlessness as you ski down, the sense of awe as you are immersed amongst the wilderness. The mountains have the ability to conjure up our most primal emotions and feelings.",
  ];

  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
    "welcome-four.png",
    "welcome-five.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _places.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: images.length,
              itemBuilder: (contex, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/" + images[index]),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 150, left: 20, right: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // AppLargetext(
                              //   text: 'Trips',
                              //   color: index == 3 ? Colors.grey : Colors.black,
                              // ),
                              Apptext(
                                text: documentSnapshot['name'],
                                size: 30,
                                color: index == 3 ? Colors.grey : Colors.black,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 250,
                                child: Apptext(
                                  text: documentSnapshot['quote'],
                                  color: AppColors.textColor2,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<AppCubit>(context).GetData();
                                },
                                child: Container(
                                  width: 200,
                                  child: Row(
                                    children: [
                                      ResponsiveButton(
                                        width: 150,
                                      )
                                    ],
                                  ),
                                ),
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
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
