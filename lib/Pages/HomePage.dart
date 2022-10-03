import 'package:coincidence/Barcelona/main.dart';
import 'package:coincidence/Liverpool/main.dart';
import 'package:coincidence/ManchesterCity/main.dart';
import 'package:coincidence/New_homeScreen/widgets/card.dart';
import 'package:coincidence/PSG/main.dart';
import 'package:coincidence/Pages/SignUp.dart';
import 'package:coincidence/RealMadrid/main.dart';
import 'package:coincidence/Services/Auth_service.dart';
import 'package:flutter/material.dart';

import 'package:coincidence/New_homeScreen/Screens/screen.dart';
import 'package:coincidence/ManchesterUnited/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem=[
    'assets/images/liverpool.png',
    'assets/images/barca.png',
    'assets/images/manutd_logo.png',
    'assets/images/realmadrid.png',
    'assets/images/psg.png',
    'assets/images/mancity_logo.png',
  ];

  Auth authclass= Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Coincidence League',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 29,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
          actions:[
        IconButton(icon: Icon(Icons.logout),color: Colors.black,onPressed: ()async {
          await authclass.logout();
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (builder)=>SignUp()),
                  (route) => false);
        },),
      ]
   ),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
              height: 800,
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 275,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white70,
                      image: new DecorationImage(
                        image: new AssetImage("assets/images/stadium.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, top: 27),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Match of the Day",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 38,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // Text(
                                    //   "of the day",
                                    //   style: TextStyle(
                                    //     color: Colors.black45,
                                    //     fontSize: 50,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30, top: 30),
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13.0),
                                    color: Colors.white12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/manutd_logo.png",
                                      height: 110,
                                      width: 110,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Man United",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/barclays_logo.png",
                                      height: 45,
                                      width: 85,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "19:30",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Old Trafford",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white70,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/mancity_logo.png",
                                      height: 110,
                                      width: 110,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Man City",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2.0, right: 2.0),
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(13.0)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 9.0,right: 12.0,left: 12.0,bottom: 12.0),
                            child: Container(
                              padding: EdgeInsets.only(top: 12.0,right: 12.0,left: 12.0,bottom: 12.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.0),
                                color: Colors.black87,
                              ),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  "Argentina vs Portugal",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Date : 20/03/2023',style:
                                TextStyle(color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20, right: 20),
                  //   height: 85,
                  //   decoration: BoxDecoration(
                  //       color: Colors.blueGrey,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Container(
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(17.0),
                  //           child: Container(
                  //             padding: EdgeInsets.all(12.0),
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(13.0),
                  //               color: Colors.black87,
                  //             ),
                  //             child: Icon(
                  //               Icons.people_alt_sharp,
                  //               color: Colors.white,
                  //               size: 27,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Padding(
                  //                 padding: const EdgeInsets.only(top: 22),
                  //                 child: Text(
                  //                   "Teams",
                  //                   style: TextStyle(
                  //                     color: Colors.white,
                  //                     fontSize: 17,
                  //                     fontWeight: FontWeight.w700,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ]),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Manchester United",
                          svgSrc: "assets/images/manutd_logo.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Team();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Real Madrid",
                          svgSrc: "assets/images/realmadrid.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Realmadrid();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "FC Barcelona",
                          svgSrc: "assets/images/barca.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Barcelona();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Liverpool",
                          svgSrc: "assets/images/liverpool.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Liverpool();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Manchester City",
                          svgSrc: "assets/images/mancity_logo.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ManchesterCity();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Paris Saint German",
                          svgSrc: "assets/images/psg.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return PSG();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

    ])
    ))));
  }
}


