import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/pages/navepages/bar_item_page.dart';
import 'package:travelapptest/pages/navepages/home_page.dart';
import 'package:travelapptest/pages/navepages/my_page.dart';
import 'package:travelapptest/pages/navepages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];
  int correntIndex = 0;
  void OnTap(int index) {
    setState(() {
      correntIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[correntIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: OnTap,
          currentIndex: correntIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp),
              label: 'Bar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My',
            )
          ]),
    );
  }
}
