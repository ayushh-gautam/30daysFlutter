import 'package:catalog_app/Pages/homePage.dart';
import 'package:catalog_app/Pages/utility/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/login_page.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        '/': (context) => LoginPage(),
        MyOwnRoutes.HomePage: (context) => HomePage(),
      },
    ),
  );
}
