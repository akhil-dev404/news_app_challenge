import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



    TextStyle textstyle2(double fz, FontWeight fw, Color color) =>
    GoogleFonts.montserrat(
      fontSize: fz,
      fontWeight: fw,
      color: color,
    );
     TextStyle textstyle3(double fz, FontWeight fw, Color color) =>
    GoogleFonts.montserrat(
      fontSize: fz,
      fontWeight: fw,
      color: color,
    );
InputDecoration inputdecoration(String str, IconData icon) {
  return InputDecoration(
      hintText: '$str',
      border: new OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black, width: 2)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black, width: 2)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black, width: 2)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      hintStyle: TextStyle(
        fontSize: 21,
      ),
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ));
}


