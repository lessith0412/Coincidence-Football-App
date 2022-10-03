import 'package:flutter/material.dart';
import 'package:coincidence/Barcelona/constants.dart';
import 'package:coincidence/Barcelona/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Barcelona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coincidence League',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductsScreen(),
    );
  }
}
