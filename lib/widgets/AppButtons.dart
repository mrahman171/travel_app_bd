import 'package:flutter/material.dart';
import 'package:travelapptest/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  double size;
  final Color color;
  final Color backgroundcolor;
  final Color bordercolor;
  String? text;
  IconData? icon;
  bool? IsIcon;
  AppButton(
      {this.text = 'hi',
      this.icon = Icons.linked_camera,
      this.IsIcon = false,
      required this.size,
      required this.color,
      required this.backgroundcolor,
      required this.bordercolor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          border: Border.all(
            color: bordercolor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundcolor,
        ),
        child: IsIcon == false
            ? Center(
                child: Apptext(
                  text: text!,
                  color: color,
                ),
              )
            : Center(
                child: Icon(
                  icon,
                  color: color,
                ),
              ));
  }
}
