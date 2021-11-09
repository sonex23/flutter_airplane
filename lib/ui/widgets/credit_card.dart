import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:intl/intl.dart';

class CreditCard extends StatelessWidget {
  final String name;
  final int credit;
  const CreditCard({
    Key? key,
    required this.name,
    required this.credit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 35,
            right: 35,
            child: Container(
              width: 230,
              height: 45,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 11),
                    blurRadius: 100,
                    spreadRadius: 0,
                    color: kShadowBonusCard.withOpacity(0.5),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            padding: EdgeInsets.all(defaultMargin),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_card.png'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 50 / 100 * 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: whiteTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              name,
                              style: whiteTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset("assets/logo.png"),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Pay",
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    ),
                    Text(
                      NumberFormat.currency(
                        symbol: "IDR ",
                        decimalDigits: 0,
                      ).format(credit),
                      style: whiteTextStyle.copyWith(
                        fontSize: 26,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
