import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app_1/my_info/utils/Utils.dart';
import 'package:news_app_1/screens/homePage.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MyHomePage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Utils().onScreenWidth(context),
        height: Utils().onScreenHeight(context),
      child: Center(
        child: Image.asset('assets/newsLogo.png'),
      ),
      ),
    );
  }
}
