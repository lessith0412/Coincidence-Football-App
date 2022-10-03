import 'package:coincidence/Pages/HomePage.dart';
import 'package:coincidence/Pages/SignUp.dart';
import 'package:flutter/material.dart';

Widget board_page(BuildContext context,String img_path,String title){
  TextStyle titleStyle = TextStyle(color: Colors.white70,
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  );
  return Container(
    decoration: BoxDecoration(
      image : DecorationImage(
        image: AssetImage(img_path),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.luminosity),
      ),
    ),
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(title,
          style: titleStyle,),
        ),
        SizedBox(height: 20.0,),
        Align(
            alignment: Alignment.centerRight,
            child: RawMaterialButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (builder)=>SignUp()),
                        (route) => false);
              },
              fillColor: Colors.orangeAccent,
              padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 64.0),
              shape: StadiumBorder(),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
      ],
    ),
  );
}