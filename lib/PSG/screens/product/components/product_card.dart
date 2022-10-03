import 'package:coincidence/Flipcard/class.dart';
import 'package:flutter/material.dart';
import 'package:coincidence/PSG/models/product.dart';
import 'dart:math';
import '../../../constants.dart';
import 'package:coincidence/PSG/screens/product/products_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);

  final int itemIndex;
  final Product product;



  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap:(){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>Flipping(product: products[itemIndex],)), (route) => false);
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/paris.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our product image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  // image is square but we add extra 20 + 20 padding thats why width is 200
                  width: 200,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                // our image take 200 width, thats why we set out total width - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                    // it use the available space
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5, // 30 padding
                        vertical: kDefaultPadding / 4, // 5 top and bottom
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "${product.price}",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlipPage extends StatefulWidget {
  @override
  _FlipPageState createState() => _FlipPageState();
}

class _FlipPageState extends State<FlipPage> {
  //declare the isBack bool
  bool isBack = true;
  double angle = 0;

  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

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
                image: AssetImage('Cards/CC/image.png'),
                fit: BoxFit.cover,
              )
          ),
          child : SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _flip,
                    child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: angle),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double val, __) {
                          //here we will change the isBack val so we can change the content of the card
                          if (val >= (pi / 2)) {
                            isBack = false;
                          } else {
                            isBack = true;
                          }
                          return (Transform(
                            //let's make the card flip by it's center
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..rotateY(val),
                            child: Container(
                                width: 309,
                                height: 474,
                                child: isBack
                                    ? Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: AssetImage("Cards/CC/BackCover.png"),
                                    ),
                                  ),
                                ) //if it's back we will display here
                                    : Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.identity()
                                    ..rotateY(
                                        pi), // it will flip horizontally the container
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: AssetImage("Cards/CC/Messi.png"),
                                      ),
                                    ),
                                  ),
                                ) //else we will display it here,
                            ),
                          ));
                        }),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
