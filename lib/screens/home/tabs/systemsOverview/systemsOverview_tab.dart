import 'package:core_box/screens/home/tabs/systemsOverview/systemConfig/systemConfig_screen.dart';
import 'package:core_box/screens/home/widgets/systemItem/systemItem.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SysOverviewTab extends StatefulWidget {
  @override
  _SysOverviewTabState createState() => _SysOverviewTabState();
}

class _SysOverviewTabState extends State<SysOverviewTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Column(
          children: <Widget>[
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Systems',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 28, color: Colors.white),
                        ),
                        Text(
                          '2 systems',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 16,
                              color: Color.fromRGBO(169, 169, 169, 1)),
                        ),
                      ],
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 25),
              child: SystemItem(
                systemName: 'Home',
                amountOfModules: 5,
                isSystemOn: true,
                isSystemItem: true,
                onTap: () {
                  NavigationUtils.toScreen(context, screen: SystemConfig(systemName: 'Home', isSystemOn: true,));
                },
              ),
            ),
            SystemItem(
              systemName: 'Office',
              amountOfModules: 3,
              isSystemOn: false,
              isSystemItem: true,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
