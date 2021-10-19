import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final double width;
  final String label;
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.width,
  }) : super(key: key);

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
          child: Text(
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
