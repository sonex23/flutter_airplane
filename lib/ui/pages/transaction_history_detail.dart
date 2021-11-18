import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout.dart';
import 'package:airplane/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransactionHistoryDetail extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionHistoryDetail(this.transaction, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: kBlackColor,
                    ),
                    const CustomTitle(label: 'Transaction Detail'),
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
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        transaction.destination.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      transaction.destination.name,
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: medium,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      transaction.destination.city,
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
                                    "${transaction.destination.rating}",
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
                              "${transaction.amountOfTraveler} person",
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
                              transaction.selectedSeats,
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
                              transaction.insurance ? "YES" : "NO",
                              style: greenTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: semiBold,
                                  color: transaction.insurance
                                      ? kGreenColor
                                      : kRedColor),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            title: "Refundable",
                            content: Text(
                              transaction.refundable ? "YES" : "NO",
                              style: redTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: semiBold,
                                  color: transaction.refundable
                                      ? kGreenColor
                                      : kRedColor),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          DetailItem(
                            title: "VAT",
                            content: Text(
                              "${(transaction.vat * 100).toStringAsFixed(0)}%",
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
                              ).format(transaction.price),
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
                              ).format(transaction.grandTotal),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
