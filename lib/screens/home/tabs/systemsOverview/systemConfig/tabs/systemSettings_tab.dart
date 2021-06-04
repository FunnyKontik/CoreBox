import 'package:core_box/screens/home/widgets/settingsItem/settingsItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SystemSettingsTab extends StatefulWidget {
  @override
  _SystemSettingsTabState createState() => _SystemSettingsTabState();
}

class _SystemSettingsTabState extends State<SystemSettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 11, bottom: 10, top: 10),
                      child: Text(
                        'System name',
                        style: GoogleFonts.sourceSansPro(
                            color: Color.fromRGBO(158, 158, 158, 1),
                            fontSize: 16),
                      ),
                    ),
                    SettingsItem(
                      moduleName: 'Night lamp',
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 11, top: 10),
                        child: Text(
                          'Modules',
                          style: GoogleFonts.sourceSansPro(
                              color: Color.fromRGBO(158, 158, 158, 1),
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 450,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SettingsItem(
                        moduleName: 'Night lamp',
                      ),
                      SettingsItem(
                        moduleName: 'Night lamp',
                      ),
                      SettingsItem(
                        moduleName: 'Night lamp',
                      ),
                      SettingsItem(
                        moduleName: 'Night lamp',
                      ),
                      SettingsItem(
                        moduleName: 'Night lamp',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Delete system',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 16,
                                color: Color.fromRGBO(221, 72, 69, 1))),
                      )
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
