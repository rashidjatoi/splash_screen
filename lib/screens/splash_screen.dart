import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => const HomePage())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.network(
        'https://img.icons8.com/material-outlined/344/whatsapp--v1.png',
        width: 60,
        height: 60,
        color: Colors.white,
      )),
    );
  }
}
