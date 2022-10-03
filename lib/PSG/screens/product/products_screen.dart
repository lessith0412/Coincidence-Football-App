import 'package:coincidence/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:coincidence/PSG/constants.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text('Paris Saint German'),
      backgroundColor: Colors.blue[900],
      actions: <Widget>[
        IconButton(icon: Icon(Icons.arrow_circle_up_sharp),onPressed: ()async {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (builder)=>HomePage()),
                  (route) => false);
        },),
      ],
    );
  }
}
