import 'package:flutter/material.dart';
import 'package:insta/Screens/login_screen/components/size_config.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
    required this.press,
  }) : super(key: key);

  final ValueChanged<int> press;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(12),
        ),
        child: DefaultTabController(
          length: 2,
          child: Material(
            color: Colors.transparent,
            child: TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize
                  .tab, // Makes the indicator cover the entire tab
              indicatorPadding: EdgeInsets.all(2.0),
              labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
              indicatorWeight: 6.0,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              onTap: press,
              tabs: [
                Tab(text: "Sunrise Access"),
                Tab(text: "Moonlight Access")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
