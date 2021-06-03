import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/screens/code_entering/code_entering_screen.dart';
import 'package:core_box/screens/home/home_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddWelcome extends StatefulWidget {
  @override
  _AddWelcomeState createState() => _AddWelcomeState();
}

class _AddWelcomeState extends State<AddWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: buildBody(context),
    );
  }
}

Widget buildBody(BuildContext context) {
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
          top: 629,
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
          top: 0,
          left: 0,
          // height: 800,
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            height: 800,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 65, bottom: 160),
                    child: Text(
                      'Your first system!',
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.asset('assets/group.png'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 80.0,
                    ),
                    child: Text(
                      'Welcome! Add your first system and start remotely',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          color: Color.fromRGBO(169, 169, 169, 1)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 155.0),
                    child: Text(
                      'controlling your home.',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        color: Color.fromRGBO(169, 169, 169, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 120.0),
                    child: CustomLogin(
                      title: 'Add new system',
                      backgroundColor: Color.fromRGBO(18, 111, 242, 1),
                      onPressed: () {
                        NavigationUtils.toScreen(context,
                            screen: CodeEntering());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: 249,
        //   left: 26,
        //   child: Image.asset('assets/group.png'),
        // ),
        // Positioned(
        //     top: 613,
        //     left: 26,
        //     child: Column(
        //       children: <Widget>[
        //         Text(
        //           'Welcome! Add your first system and start remotely',
        //           style: GoogleFonts.sourceSansPro(
        //               fontSize: 16,
        //               color: Color.fromRGBO(169, 169, 169, 1)),
        //         ),
        //         Text(
        //           'controlling your home.',
        //           style: GoogleFonts.sourceSansPro(
        //               fontSize: 16,
        //               color: Color.fromRGBO(169, 169, 169, 1)),
        //         ),
        //       ],
        //     )),
        // Positioned(
        //     top: 750,
        //     left: 25,
        //     child: CustomLogin(
        //       title: 'Add new system',
        //       backgroundColor: Color.fromRGBO(18, 111, 242, 1),
        //       onPressed: () {},
        //     ))
      ],
    ),
  );
}
