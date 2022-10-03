import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import '../PSG/models/product.dart';
import '../PSG/screens/product/products_screen.dart';

class Flipping extends StatelessWidget {
  const Flipping({Key? key,required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>ProductsScreen()), (route) => false);
            },
          )
        ],
      ),
      backgroundColor: Color(0xFF292a3e),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Cards/CC/PSG/psg.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag:product.id,child: FlipCard(front: CustomCard(product.imagefront), back:CustomCard(product.imageback) ))
            ],
          ),
        ),
      ),
    );
  }
}


Widget CustomCard(String imagefront)
{
  return Container(
    child: SafeArea(
      child: Center(
        child: Container(
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001),
           child: Container(
               width: 309,
               height: 474,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imagefront),
              ),
            ),
          ),
        ),
      ),
    ),
    ));
}