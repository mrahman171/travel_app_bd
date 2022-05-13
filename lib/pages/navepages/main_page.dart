import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapptest/pages/navepages/bar_item_page.dart';
import 'package:travelapptest/pages/navepages/home_page.dart';
import 'package:travelapptest/pages/navepages/my_page.dart';
import 'package:travelapptest/pages/navepages/search_page.dart';

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  List pages = [
    Homepage(),
    baritempage(),
    searchpage(),
    mypage(),
  ];
  int currentstate = 0;
  void onTap(int index) {
    setState(() {
      currentstate = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentstate],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          currentIndex: currentstate,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.3),
          elevation: 0,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_sharp), label: 'bar chart'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          ]),
    );
  }
}
