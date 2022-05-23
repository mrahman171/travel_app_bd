import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({this.width = 120, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Flexible(
      child: Container(
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
      ),
=======
    return Container(
      width: width,
      height: 60,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.mainColor),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("img/button-one.png"),
      ]),
>>>>>>> c182c4fbfe743918517b501bee7dae5012156e3f
    );
  }
}
