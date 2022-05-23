import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({this.width = 120, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
<<<<<<< HEAD
        width: width,
        height: 60,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.mainColor),
        child: Row(
            mainAxisAlignment: isResponsive == true
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.center,
            children: [
              isResponsive == true
                  ? Apptext(
                      text: 'Book trip now',
                      color: Colors.white,
                    )
                  : Container(),
              Image.asset("img/button-one.png"),
            ]),
=======
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Apptext(
                      text: "Book Trip Now",
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Image.asset("img/button-one.png")
          ],
        ),
>>>>>>> b968b11d15e238ce6354bc74fd9f844a3d3452e8
      ),
    );
  }
}
