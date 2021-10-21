import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomTitle extends StatelessWidget {
  final String label;
  const CustomTitle({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: blackTextStyle.copyWith(
        fontSize: 24,
        fontWeight: semiBold,
      ),
    );
  }
}
