// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../contsants/color.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _animation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceInOut,
        reverseCurve: Curves.bounceInOut);
    _animationController.forward();
    Timer(
        const Duration(milliseconds: 2500),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomeScreen())));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'tap.az',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        color: MyTheme.splash,
      ),
    );
  }
}
