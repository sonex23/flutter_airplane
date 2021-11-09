import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/ui/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane/ui/pages/bonus.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_textformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSignIn extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const FormSignIn({Key? key, required this.formKey}) : super(key: key);

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Form(
        key: widget.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              labelText: "Email Address",
              hintText: "Your email address",
              controller: _emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              labelText: "Password",
              hintText: "Your password",
              isPassword: true,
              controller: _passwordController,
            ),
            const SizedBox(
              height: 30,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.pink,
                      content: Text(state.error),
                    ),
                  );
                } else if (state is AuthSuccess) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(
                        index: 0,
                      ),
                    ),
                    (route) => false,
                  );
                }
              },
              builder: (context, state) {
                return CustomButton(
                  isLoading: (state is AuthLoading) ? true : false,
                  label: "Sign In",
                  onTap: () {
                    if (widget.formKey.currentState!.validate()) {
                      context.read<AuthCubit>().signIn(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                    }
                  },
                  width: double.infinity,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
