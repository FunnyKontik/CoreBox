import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/screens/home/tabs/systemsOverview/systemConfig/tabs/systemModules_tab.dart';
import 'package:core_box/screens/home/tabs/systemsOverview/systemConfig/tabs/systemSettings_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SystemConfig extends StatefulWidget {
  final String systemName;
  final bool isSystemOn;

  SystemConfig({
    @required this.systemName,
    @required this.isSystemOn,
  });

  @override
  _SystemConfigState createState() =>
      _SystemConfigState(switchValue: this.isSystemOn);
}

class _SystemConfigState extends State<SystemConfig> {
  bool switchValue = false;
  int _currentIndex = 0;

  _SystemConfigState({@required this.switchValue});

  @override
  Widget build(BuildContext context) {
    final tabs = <Widget>[
      SystemModulesTab(),
      SystemSettingsTab(),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.close_outlined),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          widget.systemName,
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 28, color: Colors.white),
                        ),
                        Text(
                          'Current system',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 16,
                              color: Color.fromRGBO(169, 169, 169, 1)),
                        ),
                      ],
                    ),
                    CupertinoSwitch(
                        activeColor: Color.fromRGBO(18, 111, 242, 1),
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        }),
                  ],
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Material(
                  color: Color.fromRGBO(135, 135, 135, 1),
                  child: TabBar(
                    indicatorColor: Colors.grey,
                    indicator: BoxDecoration(color: Colors.blue),
                    onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    tabs: [
                      Tab(
                        text: 'Modules',
                      ),
                      Tab(text: 'Settings'),
                    ],
                  ),
                ),
              ),
              Container(
                child: tabs[_currentIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
