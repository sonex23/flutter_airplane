import 'package:flutter/material.dart';
import 'package:airplane/ui/pages/bonus.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_textformfield.dart';

class FormSignUp extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const FormSignUp({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Form(
        key: formKey,
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
              label: "Get Started",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Bonus()));
                }
              },
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
