import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/widgets/app_large_text1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, left: 28),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 58,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 28),
            child: AppLargetext(text: "Discover"),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Inspiration",
                    ),
                    Tab(
                      text: "Emotions",
                    ),
                  ]),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              Text('Hi'),
              Text('there'),
              Text('Bye'),
            ]),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicatro extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    throw UnimplementedError();
  }
}
