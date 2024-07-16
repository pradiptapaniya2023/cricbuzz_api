import 'package:flutter/material.dart';
import '2_match_type.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashSS();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        "Cricbuzz",
        style: TextStyle(color: Colors.black , fontSize: 30),
      )),
    );
  }

  void splashSS() {
    Future.delayed(Duration(seconds: 4)).then(
      (value) {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return MatchType();
          },
        ));
      },
    );
  }
}
