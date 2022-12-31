import 'package:catalog_app/Pages/homePage.dart';
import 'package:catalog_app/Pages/utility/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/login_page.dart';

// Learnt about context and constraints
void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        //fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: MyOwnRoutes.HomePage,
      routes: {
        '/': (context) => LoginPage(),
        MyOwnRoutes.HomePage: (context) => const HomePage(),
      },
    ),
  );
}
