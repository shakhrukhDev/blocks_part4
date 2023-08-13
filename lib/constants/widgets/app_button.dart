import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton {
  AppButton._();

  static TextStyle fontLibreCaslonTextW700({required Color appcolor}) {
    return GoogleFonts.libreCaslonText(
      textStyle: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}