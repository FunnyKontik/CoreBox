import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String str;

  const ProfileItem({Key key , @required this.icon , @required this.str}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 24 , color: Color.fromRGBO(155, 155, 155, 1),),
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Text(str,
              style: GoogleFonts.sourceSansPro(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                )
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
