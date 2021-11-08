import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 30,
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                      top: 20,
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 65,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image_checkout.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CGK",
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          "Tanggerang",
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "TLC",
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          "Ciliwung",
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: BlocBuilder<SeatCubit, List<String>>(
                    builder: (context, seatState) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 16,
                                ),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/image_destiny_2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lake Ciliwung",
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: medium,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Tanggerang",
                                      style: greyTextStyle.copyWith(
                                          fontSize: 14, fontWeight: medium),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
                                    height: 24,
                                    width: 24,
                                    child: Image.asset("assets/icon_star.png"),
                                  ),
                                  Text(
                                    "4.8",
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: medium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Booking Details",
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          DetailItem(
                            title: "Traveler",
                            content: Text(
                              "${seatState.length} person",
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            title: "Seat",
                            content: Text(
                              seatState.join(", "),
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            title: "Insurance",
                            content: Text(
                              "YES",
                              style: greenTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            title: "Refundable",
                            content: Text(
                              "NO",
                              style: redTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            title: "VAT",
                            content: Text(
                              "45%",
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            title: "Price",
                            content: Text(
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: "IDR ",
                                decimalDigits: 0,
                              ).format(8500000),
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            margin: 0,
                            title: "Grand Total",
                            content: Text(
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: "IDR ",
                                decimalDigits: 0,
                              ).format(8500000 * seatState.length),
                              style: purpleTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Details",
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 16),
                            width: 100,
                            height: 70,
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: kShadowBonusCard.withOpacity(0.2),
                                    blurRadius: 20,
                                    spreadRadius: 0,
                                    offset: const Offset(0, 10),
                                  )
                                ]),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/logo.png',
                                    width: 24,
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
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                NumberFormat.currency(
                                  locale: 'id',
                                  symbol: "IDR ",
                                  decimalDigits: 0,
                                ).format(280000000),
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: medium,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Current Balance",
                                style: greyTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: light,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                CustomButton(
                  label: "Pay Now",
                  onTap: () {
                    context.read<SeatCubit>().setDefault();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessCheckout(),
                      ),
                    );
                  },
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Terms and Conditions",
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
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

class DetailItem extends StatelessWidget {
  final String title;
  final Widget content;
  final double? margin;
  const DetailItem({
    required this.title,
    required this.content,
    this.margin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin ?? 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: Image.asset(
                  "assets/icon_checklist.png",
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: content,
            ),
          ),
        ],
      ),
    );
  }
}
