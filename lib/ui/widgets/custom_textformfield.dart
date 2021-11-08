import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool? isPassword;
  final TextEditingController controller;
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.isPassword,
    required this.controller,
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
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: isPassword == true ? true : false,
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          cursorColor: kBlackColor,
          validator: (value) {
            if (value != null) {
              if (value == "" || value.isEmpty) {
                return "Data belum diisi";
              }
              return null;
            }
            return "Data belum diisi";
          },
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
