import 'package:airplane/ui/pages/sign_up.dart';
import 'package:airplane/ui/widgets/form_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_title.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formSignInKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTitle(
                  label: "Sign in with Your\nexisting Account",
                ),
                const SizedBox(
                  height: 50,
                ),
                FormSignIn(
                  formKey: _formSignInKey,
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text(
                      "Don't have an account yet ? Sign Up",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
