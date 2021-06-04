import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/models/user_model.dart';
import 'package:core_box/screens/home/home_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeEntering extends StatefulWidget {
  final UserModel currentUser;

  CodeEntering({@required this.currentUser}) ;

  @override
  _CodeEnteringState createState() => _CodeEnteringState();
}

class _CodeEnteringState extends State<CodeEntering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 25),
          child: Container(
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      'Adding system',
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white, fontSize: 20),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.help_outline,
                          color: Colors.white,
                        ),
                        onPressed: () {})
                  ],
                ),
                Image.asset('assets/cube.png'),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  onChanged: (value) {
                    print(value);
                  },
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                      activeFillColor: Colors.white,
                      inactiveFillColor: Color.fromRGBO(87, 87, 87, 1),
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      borderWidth: 5,
                      activeColor: Colors.white,
                      inactiveColor: Color.fromRGBO(87, 87, 87, 1),
                      selectedFillColor: Colors.white,
                      selectedColor: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Center(
                    child: Text(
                      'Enter the six-digit code located on the central',
                      style: GoogleFonts.sourceSansPro(
                          color: Color.fromRGBO(169, 169, 169, 1)),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'unit of the system',
                    style: GoogleFonts.sourceSansPro(
                        color: Color.fromRGBO(169, 169, 169, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: CustomLogin(
                    title: 'Register system',
                    backgroundColor: Color.fromRGBO(18, 111, 242, 1),
                    onPressed: () {
                      Navigator.pop(context);
                      NavigationUtils.toScreenRemoveUntil(context,
                          screen: HomeScreen(currentUser: widget.currentUser,));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
