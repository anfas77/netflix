import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netflix_3/real_home.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RealHome()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 23, 23),
        body: Center(
          child: Image(
            image: AssetImage("images/netflix.png"),
          ),
        ));
  }
}
