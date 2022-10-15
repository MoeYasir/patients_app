import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Healtha',
        theme: ThemeData(
            // scaffoldBackgroundColor: kPrimaryColor,
            textTheme: TextTheme(
              bodyText1: GoogleFonts.poppins().copyWith(color: Colors.white),
              bodyText2: GoogleFonts.poppins().copyWith(color: Colors.black),

              // bodyText2: GoogleFonts.poppins().copyWith(color: Color(0xffF8ECD1)),
            ),
            primaryIconTheme: const IconThemeData(color: Colors.black)),
        home: HomePage());
  }
}
