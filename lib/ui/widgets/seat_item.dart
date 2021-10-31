import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final String blok;
  final String number;
  final String status;
  final VoidCallback onTap;
  const SeatItem({
    Key? key,
    required this.blok,
    required this.number,
    required this.status,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: status == "unavailable"
                ? kUnavailable
                : status == "available"
                    ? kAvailable
                    : status == "selected"
                        ? kPrimaryColor
                        : kUnavailable,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: status == "unavailable" ? kUnavailable : kPrimaryColor,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text(
              status == "selected" ? "YOU" : "",
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
