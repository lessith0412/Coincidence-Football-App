import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:coincidence/Pages/PhoneAuthPage.dart';

import '../Pages/HomePage.dart';

class Auth{
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  FirebaseAuth auth = FirebaseAuth.instance;
  final storage = new FlutterSecureStorage();

Future<void> googleSignIn(BuildContext context)async{
  try{
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    if(googleSignInAccount!=null){
      GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

      AuthCredential credential =GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );
      try{
        UserCredential userCredential =await auth.signInWithCredential(credential);
        storeTokenandData(userCredential);
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (builder)=>HomePage()),
                (route) => false);
      }
      catch(e) {
        final snackbar = SnackBar(content: Text(e.toString()));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    }
    else{
      final snackbar = SnackBar(content: Text('Not able to Sign In'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);

    }
  }
  catch(e)
  {
    final snackbar = SnackBar(content: Text(e.toString()));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
Future<void> storeTokenandData(UserCredential userCredential)async
{
  await storage.write(key: 'token', value: userCredential.credential?.token.toString());
  await storage.write(key: 'userCredential', value: userCredential.toString());
}

Future<String?> getToken() async
{
  return await storage.read(key: 'token');
}
Future<void> logout()async{
  try{
    await _googleSignIn.signOut();
    await auth.signOut();
    await storage.delete(key: 'token');
  }
  catch(e)
  {

  }
}
Future<void> verifyPhoneNumber(String phoneNumber,BuildContext context,Function setData ) async{
  PhoneVerificationCompleted verificationCompleted =(PhoneAuthCredential phoneAuthCredential)async{
    showSnackbar(context, 'Verification Completed');
  };
  PhoneVerificationFailed verificationFailed = (FirebaseAuthException exception){
    showSnackbar(context, exception.toString());
  };
  // ignore: prefer_function_declarations_over_variables
  PhoneCodeSent codeSent = (String verificationID,[int? forceResendingtoken]) async {
    showSnackbar(context, 'Verification Code Sent on the  Mobile Number');
    setData(verificationID);
  };
  PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout = (String verificationID){
    showSnackbar(context, 'Time Out');
  };
  try{
    await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
  }
  catch(e)
  {
    showSnackbar(context, e.toString());
  }
}
Future<void> signInwithPhoneNumber(String verificationId, String smsCode,BuildContext context)async
{
  try{
    AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode);
    UserCredential userCredential = await auth.signInWithCredential(credential);
    storeTokenandData(userCredential);
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (builder)=>HomePage()),
            (route) => false);
    showSnackbar(context, 'Logged IN Successfull!');
  }
  catch(e)
  {
    showSnackbar(context, e.toString());

  }
}

void showSnackbar(BuildContext context,String text)
{
  final snackbar = SnackBar(content: Text(text));
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}
}