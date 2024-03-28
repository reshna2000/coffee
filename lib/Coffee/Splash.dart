import 'dart:async';

import 'package:coffee/Coffee/bottomnavbar.dart';
import 'package:coffee/Coffee/welcome.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => bottom(),));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: Center(
          child: Image.asset("assets/images/logo.png",scale: 2),
        ),
      ),

    );
  }
}
