import 'package:core_box/models/user_model.dart';
import 'package:core_box/screens/adding_welcome/adding_welcome_screen.dart';
import 'package:core_box/screens/home/tabs/profile/profile_tab.dart';
import 'package:core_box/screens/home/tabs/systemsOverview/systemsOverview_tab.dart';
import 'package:core_box/screens/home/tabs/payment/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final UserModel currentUser;

  const HomeScreen({Key key, @required this.currentUser}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final tabs = <Widget>[
      PaymentScreen(
        currentUser: widget.currentUser,
      ),
      SysOverviewTab(),
      ProfileTab(
        currentUser: widget.currentUser,
      ),

    ];

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
