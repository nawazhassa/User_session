import 'package:flutter/material.dart';
import 'package:shared_preference/widgets/home_screen.dart';
import 'package:shared_preference/widgets/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Splash_screen());
  }
}
