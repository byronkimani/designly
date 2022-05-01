import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getAppTheme(BuildContext context) => ThemeData(
      textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      primaryColor: const Color(0xff464d5c),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xff464d5c),
        secondary: const Color(0xffbc946c),
      ),
    );
