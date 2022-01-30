import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_update/UI/LoginScreen.dart';
import 'dart:async';

class SplashScrn extends StatefulWidget {
  @override
  _SplashScrnState createState() => _SplashScrnState();
}

class _SplashScrnState extends State<SplashScrn> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.off(LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff13294b),
      child: Image.asset("assets/images/splashimage.png"),
    );
  }
}
