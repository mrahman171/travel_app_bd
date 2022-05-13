import 'package:flutter/material.dart';
import 'package:travelapptest/misc/colors.dart';
import 'package:travelapptest/widgets/app_large_text1.dart';
//ignore_for_file: prefer_const_constructors

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    //TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Container(
                  height: 50,
                  width: 50,
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
          //discover text
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: AppLargetext(text: 'Discover'),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //tapbar
          Container(
              child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      isScrollable: true,
                      labelPadding:
                          EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      labelColor: Colors.black,
                      indicator: circulartabindicator(
                          color: AppColors.mainColor, radius: 4),

                      unselectedLabelColor: Colors.grey.withOpacity(.7),
                      //indicatorColor: Colors.amber,

                      tabs: const [
                        Text('places'),
                        Text('places'),
                        Text('places')
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: double.maxFinite,
                  child: TabBarView(
                    children: const [
                      Icon(Icons.directions_car),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class circulartabindicator extends Decoration {
  final Color color;
  double radius;
  circulartabindicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // ignore: todo
    // TODO: implement createBoxPainter
    return circlepainter(color: color, radius: radius);
  }
}

class circlepainter extends BoxPainter {
  @override
  final Color color;
  double radius;
  circlepainter({required this.color, required this.radius});
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleoffset =
        Offset(configuration.size!.width / 2, configuration.size!.height);
    canvas.drawCircle(offset + circleoffset, radius, paint);
  }
}
