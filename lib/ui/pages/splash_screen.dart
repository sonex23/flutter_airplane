import "package:flutter/material.dart";
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const GetStarted()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: kPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "AIRPLANE",
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 32,
                letterSpacing: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
