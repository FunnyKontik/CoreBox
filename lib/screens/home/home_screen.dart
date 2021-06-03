import 'package:core_box/screens/adding_welcome/adding_welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tabs/profile/profile_tab.dart';
import 'tabs/systemsOverview/systemsOverview_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final tabs = <Widget>[
    AddWelcome(),
    SysOverviewTab(),
    ProfileTab(),
  ];

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.white,
          unselectedLabelColor: Color.fromRGBO(82, 82, 82, 1),
          indicatorSize: TabBarIndicatorSize.label,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          tabs: [
            Tab(
              icon: Icon(
                Icons.add_circle_outline,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                size: 32,
              ),
            ),
          ],
        ),
        body: tabs[currentIndex],
      ),
    );
  }
}
