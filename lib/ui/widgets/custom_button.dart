import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final double width;
  final String label;
  final bool? isLoading;
  const CustomButton(
      {Key? key,
      required this.label,
      required this.onTap,
      required this.width,
      this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Center(
          child: isLoading == true
              ? CircularProgressIndicator(
                  color: kWhiteColor,
                )
              : Text(
                  label,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
        ),
      ),
    );
  }
}
