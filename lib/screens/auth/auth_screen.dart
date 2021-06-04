import 'package:core_box/cubit/auth/auth_cubit.dart';
import 'package:core_box/cubit/auth/auth_state.dart';
import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/custom_widgets/custom_text_input.dart';
import 'package:core_box/screens/adding_welcome/adding_welcome_screen.dart';
import 'package:core_box/screens/home/home_screen.dart';
import 'package:core_box/screens/registration/registration_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthCubit authCubit = AuthCubit();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      backgroundColor: Colors.black,
    );
  }

  Widget buildBody(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
        bloc: authCubit,
        listener: (_, state) {
          if (!state.isLoading && state.currentUser != null) {
            NavigationUtils.toScreenRemoveUntil(context,
                screen: HomeScreen(
                  currentUser: state.currentUser,
                ));
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 45, horizontal: 25),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.montserrat(
                              fontSize: 28,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20.0, top: 60),
                        child: CustomTextInput(
                            title: 'Email',
                            textEditingController: emailController,
                            isPassword: false),
                      ),
                      CustomTextInput(
                          title: 'Password',
                          textEditingController: passwordController,
                          isPassword: true),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Forgot password?',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 18)),
                          style: ButtonStyle(
                            padding: MaterialStateProperty
                                .resolveWith<EdgeInsetsGeometry>(
                              (Set<MaterialState> states) {
                                return EdgeInsets.only(top: 10);
                              },
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        CustomLogin(
                          title: 'Sign In',
                          backgroundColor:
                              Color.fromRGBO(135, 135, 135, 1),
                          onPressed: () {
                            NavigationUtils.toScreenRemoveUntil(context,
                                screen: AddWelcome());
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            'or',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(135, 135, 135, 1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30.0),
                          child: CustomLogin(
                              title: 'Sign in with Google',
                              backgroundColor:
                                  Color.fromRGBO(221, 72, 69, 1),
                              onPressed: () {
                                authCubit.googleSignIn();
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 60),
                          child: CustomLogin(
                              title: 'Sign in with Facebook',
                              backgroundColor:
                                  Color.fromRGBO(58, 89, 152, 1),
                              onPressed: () {
                                authCubit.facebookSignIn();
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Don\'t have an account?',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color:
                                      Color.fromRGBO(135, 135, 135, 1)),
                            ),
                            TextButton(
                              onPressed: () {
                                NavigationUtils.toScreenRemoveUntil(
                                    context,
                                    screen: RegistrationScreen());
                              },
                              child: Text('Sign Up',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 18)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ));
  }
}
