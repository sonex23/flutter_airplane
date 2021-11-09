import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/ui/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/credit_card.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return CreditCard(
                credit: state is AuthSuccess ? state.user.balance : 0,
                name: state is AuthSuccess ? state.user.name : "",
              );
            },
          ),
          const SizedBox(
            height: 81,
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
                    builder: (context) => const MainPage(),
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
