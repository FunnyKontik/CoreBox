import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/custom_widgets/custom_text_input.dart';
import 'package:core_box/screens/auth/auth_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      backgroundColor: Colors.black,
    );
  }
}

Widget buildBody(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 45, horizontal: 25),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Text(
                  'Sign up',
                  style: GoogleFonts.montserrat(
                      fontSize: 28,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 60),
                child: CustomTextInput(
                  title: 'Name',
                  textEditingController: nameController,
                  isPassword: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CustomTextInput(
                    title: 'Email',
                    textEditingController: emailController,
                    isPassword: false),
              ),
              CustomTextInput(
                  title: 'Password',
                  textEditingController: passwordController,
                  isPassword: true),
            ],
          ),
          Column(
            children: <Widget>[
              CustomLogin(
                title: 'Sign Up',
                backgroundColor: Color.fromRGBO(135, 135, 135, 1),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromRGBO(135, 135, 135, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: CustomLogin(
                    title: 'Sign up with Google',
                    backgroundColor: Color.fromRGBO(221, 72, 69, 1),
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: CustomLogin(
                    title: 'Sign up with Facebook',
                    backgroundColor: Color.fromRGBO(58, 89, 152, 1),
                    onPressed: () {}),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.montserrat(
                        fontSize: 18, color: Color.fromRGBO(135, 135, 135, 1)),
                  ),
                  TextButton(
                    onPressed: () {
                      NavigationUtils.toScreenRemoveUntil(context,
                          screen: AuthScreen());
                    },
                    child: Text('Sign in',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 18)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
