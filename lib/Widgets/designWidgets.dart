import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignWidgets {
  static LinearGradient linearGradientMain(BuildContext context) {
    return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).primaryColorLight,
          Theme.of(context).primaryColor
        ]);
  }

  static RichText titleCustom() {
    return RichText(
        text: TextSpan(
            text: "Hel",
            style: GoogleFonts.portLligatSans(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white60),
            children: [
          TextSpan(
              text: "Shop",
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ]));
  }
}
