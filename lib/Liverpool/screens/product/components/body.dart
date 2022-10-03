import 'package:flutter/material.dart';
import 'package:coincidence/Liverpool/constants.dart';
import 'package:coincidence/Liverpool/models/product.dart';
import 'product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
//                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/liverb.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: kBackgroundColor,
                  ),
                ),
                ListView.builder(
                  // here we use our demo procuts list
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
