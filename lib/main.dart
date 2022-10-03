import 'package:coincidence/Pages/HomePage.dart';
import 'package:coincidence/Services/Auth_service.dart';
import 'package:coincidence/Splashscreen/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  Auth authclass= Auth();

  Widget currentPage = SplashScreen();


    void checkLogin()async
    {
      String? token = await authclass.getToken();
      if(token!=null)
        {
          setState((){
            currentPage =HomePage();
          });
        }
    }
    @override
    void initState() {

      super.initState();
      checkLogin();
    }


    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: currentPage,
      );
    }
  }
