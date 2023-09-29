import 'package:flutter/material.dart';
import 'package:quiz_practise/secondscreen.dart';
import 'package:quiz_practise/tabs/badgetab.dart';
import 'package:quiz_practise/tabs/cloudtab.dart';
import 'package:quiz_practise/tabs/snowtab.dart';
import 'package:quiz_practise/tabs/suntab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: index,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          bottom: TabBar(
                onTap: (value) {
                  index = value;
                  setState(() {});
                },
                tabs: [
                  Tab(
                    icon: Icon(Icons.ac_unit),
                    child: Text("snowy"),
                  ),
                  Tab(
                    icon: Icon(Icons.wb_cloudy_outlined),
                    child: Text("cloudy"),
                  ),
                  Tab(
                    icon: Icon(Icons.sunny),
                    child: Text("sunny"),
                  ),
                  Tab(
                    icon: Badge(
                        child: Icon(Icons.favorite_border),
                      label: Text("$count"),
                  )
                    ),
                ]),

        ),
        body: tabs[index],
      ),
    );
  }

  List<Widget> tabs = [SnowTab(), CloudTab(), SunTab(), BadgeTab()];

}
