import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';
import 'package:flutter_airplane/ui/widgets/custom_title.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTitle(
                  label: "Join us and get\nyour next journey",
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextFormField(
                          labelText: "Full Name",
                          hintText: "Your full name",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextFormField(
                          labelText: "Email Address",
                          hintText: "Your email address",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextFormField(
                          labelText: "Password",
                          hintText: "Your password",
                          isPassword: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextFormField(
                          labelText: "Hobby",
                          hintText: "Your hobby",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          label: "GetStarted",
                          onTap: () {
                            debugPrint("klik");
                          },
                          width: double.infinity,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "Terms and Conditions",
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool? isPassword;
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: regular,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          obscureText: isPassword == true ? true : false,
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 17,
            ),
            hintText: hintText,
            hintStyle: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kInactiveColor)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
        )
      ],
    );
  }
}
