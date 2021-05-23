import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInput extends StatefulWidget {
  final String title;
  final TextEditingController textEditingController;
  final isPassword;

  const CustomTextInput({
    Key key,
    @required this.title,
    @required this.textEditingController,
    @required this.isPassword,
  }) : super(key: key);

  @override
  _CustomTextInput createState() => _CustomTextInput();
}

class _CustomTextInput extends State<CustomTextInput> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enableSuggestions: false,
      autocorrect: false,
      obscureText: widget.isPassword? !isVisible : isVisible,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(

        suffixIcon: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: widget.isPassword
              ? IconButton(
                  icon: isVisible
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off_outlined),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  color: Colors.white,
                )
              : null,
        ),
        contentPadding:
            widget.isPassword ? null : const EdgeInsets.only(top: 10),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color.fromRGBO(169, 169, 169, 1),
          width: 1.0,
        )),
        hintText: widget.title,
        hintStyle: GoogleFonts.montserrat(
            color: Color.fromRGBO(169, 169, 169, 1),
            fontWeight: FontWeight.normal,
            fontSize: 16),
      ),
    );
  }
}
