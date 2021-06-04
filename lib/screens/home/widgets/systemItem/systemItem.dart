import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SystemItem extends StatefulWidget {
  final String systemName;
  final String title;
  final int amountOfModules;
  final bool isSystemOn;
  final VoidCallback onTap;
  final bool isSystemItem;

  SystemItem({
    @required this.amountOfModules,
    @required this.systemName,
    @required this.isSystemOn,
    @required this.onTap,
    @required this.isSystemItem,
    @required this.title,
  });

  @override
  _SystemItemState createState() =>
      _SystemItemState(switchValue: this.isSystemOn);
}

class _SystemItemState extends State<SystemItem> {
  bool switchValue;

  _SystemItemState({@required this.switchValue});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap ?? () {},
      child: Container(
        padding: EdgeInsets.all(25),
        height: 108,
        decoration: BoxDecoration(
          color: Color.fromRGBO(26, 26, 26, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.systemName,
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.start,
                ),
                widget.isSystemItem
                    ? Text(
                        widget.amountOfModules.toString() + ' modules',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          color: Color.fromRGBO(169, 169, 169, 1),
                        ),
                      )
                    : Text(
                        widget.title,
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          color: Color.fromRGBO(169, 169, 169, 1),
                        ),
                      ),
              ],
            ),
            CupertinoSwitch(
                activeColor: Color.fromRGBO(18, 111, 242, 1),
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
