import 'dart:async';
import 'package:core_box/screens/registration/registration_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: buildBody(),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3500), () {
      NavigationUtils.toScreenRemoveUntil(context,
          screen: RegistrationScreen());
    });
  }
}

Widget buildBody() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 50,
        ),
        Image.asset('assets/logo.png'),
        Container(
          height: 50,
          child: Text(
            'CoreBox',
            style: GoogleFonts.electrolize(
                color: Color.fromRGBO(95, 110, 112, 1), fontSize: 36),
          ),
        ),
      ],
    ),
  );
}
