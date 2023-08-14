import 'package:block_part4/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  AppStyle._();

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

  static TextStyle get montserrat24xW800Black => GoogleFonts.montserrat(
        textStyle: const TextStyle(
          fontSize: 36,
          color: AppColors.black,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
      );

  static TextStyle get montserrat12xW400White => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 12,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  );

  static TextStyle get montserrat12xW400Black => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 12,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  );

  static TextStyle get montserrat10xW400Black => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 10,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  );

  static TextStyle get montserrat10xW400Red => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 10,
      color: AppColors.red,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  );
  static TextStyle get libreCaslonText18xW700Blue => GoogleFonts.libreCaslonText(
    textStyle: const TextStyle(
      fontSize: 18,
      color: AppColors.blue,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
  );
  static TextStyle get montserrat14xW600Gray => GoogleFonts.montserrat(
        textStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.gray,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
      );

  static TextStyle get montserrat16xW500Black => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
  );

  static TextStyle get montserrat16xW700Black => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
  );

  static TextStyle get montserrat12xW300Gray => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 12,
      color: AppColors.gray,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
  );
  static TextStyle get montserrat12xW300Black => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 12,
      color: AppColors.black,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
  );
  static TextStyle get montserrat20xW700White => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 20,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
  );

  static TextStyle get montserrat18xW600Red => GoogleFonts.montserrat(
        textStyle: const TextStyle(
          fontSize: 18,
          color: AppColors.red,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
      );

  static TextStyle get montserrat16xW500White => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 16,
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
  );
  static TextStyle get montserrat20xW500Black => GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 20,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
  );
  static TextStyle get montserrat18xW600Black => GoogleFonts.montserrat(
        textStyle: const TextStyle(
          fontSize: 18,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
      );

  static TextStyle get montserrat18xW600Gray => GoogleFonts.montserrat(
        textStyle: const TextStyle(
          fontSize: 18,
          color: AppColors.gray,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
      );

  static TextStyle fontWelcomeBackW700({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontMontserrantW600({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontsMontserrantW600({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontGetStMontserrantW600({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w600,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontStMontserrantW400({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontGetStBMontserrantW600({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.w600,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontMontserrantW500({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontMontserrantW400({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static TextStyle fontLBMontserrantW600({required Color appcolor}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: appcolor,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
