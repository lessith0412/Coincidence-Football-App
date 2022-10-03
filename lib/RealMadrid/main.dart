import 'package:flutter/material.dart';
import 'package:coincidence/RealMadrid/constants.dart';
import 'package:coincidence/RealMadrid/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Realmadrid extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coincidence League',
      theme: ThemeData(
        // We set Poppins as our default font
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        // accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductsScreen(),
    );
  }
}
