import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/sign_up.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 35 / 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ]),
              ),
              child: Column(
                children: [
                  Text(
                    "Fly Like a Bird",
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Explore new world with us and let\nyourself get an amazing experiences",
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                      height: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    label: 'Get Started',
                    width: 220,
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                          (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
