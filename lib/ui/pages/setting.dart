import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/ui/pages/sign_in.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            } else if (state is AuthInitial) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignIn(),
                ),
                (route) => false,
              );
            }
          },
          builder: (context, state) {
            return CustomButton(
              isLoading: state is AuthLoading ? true : false,
              label: "Sign Out",
              onTap: () {
                context.read<AuthCubit>().signOut();
              },
              width: MediaQuery.of(context).size.width * 0.6,
            );
          },
        ),
      ),
    );
  }
}
