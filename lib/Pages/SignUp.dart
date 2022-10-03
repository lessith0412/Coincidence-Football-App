import 'package:coincidence/Pages/HomePage.dart';
import 'package:coincidence/Pages/PhoneAuthPage.dart';
import 'package:coincidence/Pages/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:coincidence/Services/Auth_service.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  bool circular = false;
  Auth authClass =Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.PNG'),
                fit: BoxFit.cover,
              )
          ),
          //color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Sign Up ',
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 30,
              ),
              buttonItem('assets/google.svg','Continue with Google',25,()async{
               await authClass.googleSignIn(context);
              }),
              SizedBox(
                height: 15,
              ),
              buttonItem('assets/phone.svg','Continue with Phone',25,(){
                Navigator.push(context,MaterialPageRoute(builder: (builder)=>PhoneAuthPage()));
              }),
              SizedBox(
                height: 15,
              ),
              Text('Or',style: TextStyle(
                color: Colors.white,fontSize: 18,
              ),),
              SizedBox(
                height: 15,
              ),
              textItem('Email...',_emailController,false),
              SizedBox(
                height: 15,
              ),
              textItem('Password...',_pwdController,true),
              SizedBox(
                height: 30,
              ),
              colorButton(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('If you already have an Account? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, 
                          MaterialPageRoute(builder: (builder)=>SignIn()), (route) => false);
                    },
                    child: Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget colorButton(){
    return InkWell(
      onTap: ()async {
        setState((){
          circular = false;
        });
        try {
          firebase_auth.UserCredential userCredential = await firebaseAuth
              .createUserWithEmailAndPassword(
              email: _emailController.text, password: _pwdController.text);
          if(userCredential.user?.email != null) {
            print(userCredential.user!.email);
          }
          setState((){
            circular = false;
          });
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (builder)=>HomePage()),
                (route) => false);
        }
        catch(e)
        {
          final snackbar = SnackBar(content: Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
          setState((){
            circular = false;
          });
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 90,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors:[Color(0xfffd746c),
              Color(0xffff9068) ,
              Color(0xfffd746c)]
          )
        ),
        child: Center(
          child: circular?CircularProgressIndicator()
          : Text('Sign Up',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),),
        ),
      ),
    );
  }

  Widget buttonItem(String imagepath,String buttonName, double size,VoidCallback onTap ){
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        child: Card(
          color: Colors.white70,
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1,
                color: Colors.grey,
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imagepath,
                height: size,
                width: size,),
              SizedBox(
                width: 15,
              ),
              Text(
                buttonName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),),
            ],
          ),
        ),
      ),
    );
  }
  Widget textItem(String labeltext,TextEditingController controller,bool obscureText)
  {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 55,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: 17,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.amberAccent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
          width: 1,
          color: Colors.grey,
          ),
        ),
      ),
    ));
  }
}