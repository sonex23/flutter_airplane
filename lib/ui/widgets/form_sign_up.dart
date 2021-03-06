import 'package:airplane/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:airplane/ui/pages/bonus.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_textformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSignUp extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const FormSignUp({Key? key, required this.formKey}) : super(key: key);

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _hobbyController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _hobbyController.dispose();
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
              labelText: "Full Name",
              hintText: "Your full name",
              controller: _nameController,
            ),
            const SizedBox(
              height: 20,
            ),
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
              height: 20,
            ),
            CustomTextFormField(
              labelText: "Hobby",
              hintText: "Your hobby",
              controller: _hobbyController,
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
                      builder: (context) => const Bonus(),
                    ),
                    (route) => false,
                  );
                }
              },
              builder: (context, state) {
                return CustomButton(
                  isLoading: (state is AuthLoading) ? true : false,
                  label: "Get Started",
                  onTap: () {
                    if (widget.formKey.currentState!.validate()) {
                      context.read<AuthCubit>().signUp(
                            email: _emailController.text,
                            password: _passwordController.text,
                            name: _nameController.text,
                            hobby: _hobbyController.text,
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
