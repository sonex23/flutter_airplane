import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/home.dart';
import 'package:flutter_airplane/ui/widgets/credit_card.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';

class Bonus extends StatefulWidget {
  const Bonus({Key? key}) : super(key: key);

  @override
  _BonusState createState() => _BonusState();
}

class _BonusState extends State<Bonus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CreditCard(
            credit: 280000000,
            name: 'Sona Ermando',
          ),
          const SizedBox(
            height: 91,
          ),
          Text(
            "Big Bonus 🎉",
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "We give you early credit so that\nyou can buy a flight ticket",
            style: greyTextStyle.copyWith(
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
            label: "Start Fly Now",
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                  (route) => false);
            },
            width: 220,
          ),
        ],
      ),
    );
  }
}
