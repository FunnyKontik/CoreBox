import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/models/user_model.dart';
import 'package:core_box/screens/code_entering/code_entering_screen.dart';
import 'package:core_box/screens/home/home_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddWelcome extends StatefulWidget {
  final UserModel currentUser;

  const AddWelcome({@required this.currentUser});

  @override
  _AddWelcomeState createState() => _AddWelcomeState();
}

class _AddWelcomeState extends State<AddWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: buildBody(context, widget.currentUser),
    );
  }
}

Widget buildBody(BuildContext context, UserModel currentUser) {
  return Container(
    height: MediaQuery.of(context).size.height,
    child: Stack(
      clipBehavior: Clip.antiAlias,
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          top: 111,
          left: -123,
          child: Container(
            width: 253,
            height: 253,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(32, 32, 32, 0.6),
            ),
          ),
        ),
        Positioned(
          top: 600,
          left: 242,
          child: Container(
            width: 253,
            height: 253,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(32, 32, 32, 0.6),
            ),
          ),
        ),
        Positioned(
          height: MediaQuery.of(context).size.height,
          top: 0,
          left: 0,
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            height: 800,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          'Your first system!',
                          style: GoogleFonts.sourceSansPro(
                              color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        if (currentUser.imageUrl.isNotEmpty)
                          Container(
                            width: 35,
                            height: 35,
                            child: ClipRRect(
                              child: Image.network(
                                currentUser.imageUrl,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(90)),
                            ),
                          ),
                      ]),
                  Image.asset('assets/group.png'),
                  Column(
                    children: <Widget>[
                      Text(
                        'Welcome! Add your first system and start remotely',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 16,
                            color: Color.fromRGBO(169, 169, 169, 1)),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'controlling your home.',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          color: Color.fromRGBO(169, 169, 169, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  CustomLogin(
                    title: 'Add new system',
                    backgroundColor: Color.fromRGBO(18, 111, 242, 1),
                    onPressed: () {
                      NavigationUtils.toScreen(context,
                          screen: CodeEntering(currentUser: currentUser,));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
