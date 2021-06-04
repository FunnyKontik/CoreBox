import 'dart:async';
import 'package:core_box/cubit/auth/auth_cubit.dart';
import 'package:core_box/cubit/auth/auth_state.dart';
import 'package:core_box/screens/auth/auth_screen.dart';
import 'package:core_box/screens/home/home_screen.dart';
import 'package:core_box/screens/registration/registration_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AuthCubit authCubit = AuthCubit();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
        bloc: authCubit,
        listener: (_, state) {
          if (!state.isLoading) {
            NavigationUtils.toScreenRemoveUntil(context,
                screen: state.currentUser != null
                    ? HomeScreen(
                        currentUser: state.currentUser,
                      )
                    : AuthScreen());
          }
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: buildBody(context),
        ));
  }

  @override
  void initState() {
    authCubit.checkCurrentUser();
    super.initState();
  }
}

Widget buildBody(BuildContext context) {
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
