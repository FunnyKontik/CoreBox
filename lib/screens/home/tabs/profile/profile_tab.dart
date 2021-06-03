import 'package:core_box/screens/home/widgets/profileItem/profileItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/material/icons.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Stack(
          children: <Widget>[
            Container(child: Image.asset('assets/header_profile.png')),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 25),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/profile.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Danyl Prrykhodko',
                          style: GoogleFonts.sourceSansPro(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Text(
                          '2 systems',
                          style: GoogleFonts.sourceSansPro(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(155, 155, 155, 1),
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 80.0,
                    ),
                    child: Icon(Icons.more_vert , color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 35),
          child: Container(
            height: 135,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Account',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(155, 155, 155, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('User name',
                          style: GoogleFonts.sourceSansPro(
                            textStyle: TextStyle(
                                color: Color.fromRGBO(155, 155, 155, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          )),
                      Text('Danyl Prykhodko',
                          style: GoogleFonts.sourceSansPro(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Email',
                          style: GoogleFonts.sourceSansPro(
                            textStyle: TextStyle(
                                color: Color.fromRGBO(155, 155, 155, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          )),
                      Text('danyl.prykhodko@nure.ua',
                          style: GoogleFonts.sourceSansPro(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          )),
                    ],
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 210,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text('Settings',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(91, 91, 91, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      )),
                ),
                ProfileItem(icon: Icons.notifications, str: 'Notifications'),
                ProfileItem(
                    icon: Icons.settings_system_daydream, str: 'Systems'),
                ProfileItem(icon: Icons.person_rounded, str: 'Systems users'),
                ProfileItem(icon: Icons.language, str: 'Language'),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            height: 112,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text('Support',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(91, 91, 91, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      )),
                ),
                ProfileItem(icon: Icons.messenger_outline, str: 'Write to us'),
                ProfileItem(icon: Icons.lock, str: 'Privacy policy'),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
