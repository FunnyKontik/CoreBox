import 'package:core_box/cubit/auth/auth_cubit.dart';
import 'package:core_box/models/user_model.dart';
import 'package:core_box/screens/auth/auth_screen.dart';
import 'package:core_box/screens/home/widgets/profileItem/profileItem.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/material/icons.dart';

class ProfileTab extends StatefulWidget {
  final UserModel currentUser;

  ProfileTab({
    @required this.currentUser,
  });

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  AuthCubit authCubit;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(child: Image.asset('assets/profileBack.png')),
              Padding(
                padding: const EdgeInsets.only(top: 45.0, left: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (widget.currentUser.imageUrl.isNotEmpty)
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              child: ClipRRect(
                                child: Image.network(
                                  widget.currentUser.imageUrl,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.currentUser.name,
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
                                            color: Color.fromRGBO(
                                                155, 155, 155, 1),
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 25,
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
                        Text(widget.currentUser.name,
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
                        Text(widget.currentUser.email,
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
              height: 259,
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
                  ProfileItem(
                    icon: Icons.exit_to_app_sharp,
                    str: 'Exit',
                    onTap: () async {
                      await AuthCubit().googleLogOut();
                      await NavigationUtils.toScreenRemoveUntil(context,
                          screen: AuthScreen());
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 45),
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
                  ProfileItem(
                      icon: Icons.messenger_outline, str: 'Write to us'),
                  ProfileItem(icon: Icons.lock, str: 'Privacy policy'),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
