import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/widgets/home_screen.dart';
import 'package:shared_preference/widgets/login_screen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();

}

class _Splash_screenState extends State<Splash_screen> {

  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => login_screen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Splash Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Image.network(
                'https://images.pexels.com/photos/34502687/pexels-photo-34502687.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
