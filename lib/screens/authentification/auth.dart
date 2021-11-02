import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pointsapp/screens/homePage.dart';
import 'package:pointsapp/screens/otp.dart';

class Authentification {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> signInWithGoogle(context) async {
    final googleSignIn = GoogleSignIn();
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;

      if (googleAuth.idToken != null) {
        final userCredential = await _firebaseAuth.signInWithCredential(
          GoogleAuthProvider.credential(
              idToken: googleAuth.idToken, accessToken: googleAuth.accessToken),
        );

        return userCredential.user;
      }
    } else {
      throw FirebaseAuthException(
        message: "Sign in aborded by user",
        code: "ERROR_ABORDER_BY_USER",
      );
    }
  }

  Future<void> signOut() async {
    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }
}
// class AuthProvider{
//   Future<bool>loginwithPhone(BuildContext context,String phone)async{
//     FirebaseAuth _auth = FirebaseAuth.instance;
//     _auth.verifyPhoneNumber(phoneNumber: phone, verificationCompleted: (AuthCredential credential)async{
//       UserCredential result = await _auth.signInWithCredential(credential);
//       Navigator.pop(context);
//       User user = _auth.currentUser;
//        if(user != null){

//        }else{
//          print('user does not exist');
//        }

//     }, verificationFailed: (FirebaseAuthException e){
//        Fluttertoast.showToast(msg:'user is not sign in ');
//     }, codeSent: (String verificationcode, int token){
     
//     }, codeAutoRetrievalTimeout: codeAutoRetrievalTimeout)
//   }
// }