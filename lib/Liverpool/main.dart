import 'package:flutter/material.dart';
import 'package:coincidence/Liverpool/constants.dart';
import 'package:coincidence/Liverpool/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Liverpool extends StatelessWidget {
  // This widget is the root of your application.
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
