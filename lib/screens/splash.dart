

import 'package:flutter/material.dart';
import 'package:pointsapp/screens/login.dart';

class Splash extends StatefulWidget {
 

 

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image(image: AssetImage('assets/pic.png'),fit: BoxFit.cover,)
      ),
    );
  }
}