import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/ui/widgets/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: CreditCard(
          name: context.read<AuthCubit>().state.user.name,
          credit: 280000000,
        ),
      ),
    );
  }
}
