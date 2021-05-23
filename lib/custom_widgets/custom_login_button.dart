import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLogin extends StatelessWidget {
  final title;
  final VoidCallback onPressed;
  final Color backgroundColor;

  CustomLogin({
    @required this.title,
    @required this.backgroundColor,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364,
      height: 45,

      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(title, textAlign: TextAlign.center, style: GoogleFonts.montserrat(fontSize: 18,),),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              return backgroundColor;
            },
          ),
        ),
      ),
    );
  }
}
