import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsItem extends StatefulWidget {
  final String moduleName;
  final bool isSystem;

  SettingsItem({
    @required this.isSystem,
    @required this.moduleName,
});

  @override
  _SettingsItemState createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(55, 55, 55, 1)),
        color: Color.fromRGBO(26, 26, 26, 1),
      ),
      height: 59,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.moduleName,
              style: GoogleFonts.sourceSansPro(color: Colors.white, fontSize: 16),
            ),
            InkWell(
              onTap: (){},
              child: Icon(
                Icons.delete_outline_rounded,
                color: Color.fromRGBO(158, 158, 158, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
