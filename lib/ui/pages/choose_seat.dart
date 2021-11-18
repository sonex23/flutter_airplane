import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_title.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseSeat extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeat({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.read<SeatCubit>().setDefault();
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitle(label: "Select Your\nFavorite Seat"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon_available.png",
                            width: 16,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Available",
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon_selected.png",
                            width: 16,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Selected",
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon_unavailable.png",
                            width: 16,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Unavailable",
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 30,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: BlocBuilder<SeatCubit, List<String>>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            // NOTE: SEAT INDICATORS
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: Center(
                                    child: Text(
                                      'A',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: Center(
                                    child: Text(
                                      'B',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: Center(
                                    child: Text(
                                      ' ',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: Center(
                                    child: Text(
                                      'C',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: Center(
                                    child: Text(
                                      'D',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // NOTE: SEAT 1
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SeatItem(
                                    id: 'A1',
                                    isAvailable: false,
                                  ),
                                  const SeatItem(
                                    id: 'B1',
                                    isAvailable: false,
                                  ),
                                  SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SeatItem(
                                    id: 'C1',
                                  ),
                                  const SeatItem(
                                    id: 'D1',
                                  ),
                                ],
                              ),
                            ),

                            // NOTE: SEAT 2
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SeatItem(
                                    id: 'A2',
                                  ),
                                  const SeatItem(
                                    id: 'B2',
                                  ),
                                  SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        '2',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SeatItem(
                                    id: 'C2',
                                  ),
                                  const SeatItem(
                                    id: 'D2',
                                  ),
                                ],
                              ),
                            ),
                            // NOTE: SEAT 3
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SeatItem(
                                    id: 'A3',
                                  ),
                                  const SeatItem(
                                    id: 'B3',
                                  ),
                                  SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        '3',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SeatItem(
                                    id: 'C3',
                                  ),
                                  const SeatItem(
                                    id: 'D3',
                                  ),
                                ],
                              ),
                            ),
                            // NOTE: SEAT 4
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SeatItem(
                                    id: 'A4',
                                  ),
                                  const SeatItem(
                                    id: 'B4',
                                  ),
                                  SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        '4',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SeatItem(
                                    id: 'C4',
                                  ),
                                  const SeatItem(
                                    id: 'D4',
                                  ),
                                ],
                              ),
                            ),
                            // NOTE: SEAT 5
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SeatItem(
                                    id: 'A5',
                                  ),
                                  const SeatItem(
                                    id: 'B5',
                                  ),
                                  SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        '5',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SeatItem(
                                    id: 'C5',
                                  ),
                                  const SeatItem(
                                    id: 'D5',
                                  ),
                                ],
                              ),
                            ),

                            // NOTE: YOUR SEAT
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your seat',
                                    style: greyTextStyle.copyWith(
                                      fontWeight: light,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        state.isEmpty
                                            ? "No seat"
                                            : state.join(', '),
                                        style: blackTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: medium,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // NOTE: TOTAL
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: greyTextStyle.copyWith(
                                      fontWeight: light,
                                    ),
                                  ),
                                  Text(
                                    NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'IDR ',
                                      decimalDigits: 0,
                                    ).format(state.length * destination.price),
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    label: "Continue to Checkout",
                    onTap: () {
                      int price = destination.price *
                          context.read<SeatCubit>().state.length;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Checkout(
                            transaction: TransactionModel(
                              user: context.read<AuthCubit>().state.user,
                              destination: destination,
                              amountOfTraveler:
                                  context.watch<SeatCubit>().state.length,
                              selectedSeats:
                                  context.watch<SeatCubit>().state.join(', '),
                              insurance: true,
                              refundable: false,
                              vat: 0.45,
                              price: price,
                              grandTotal: price + (price * 0.45).toInt(),
                            ),
                          ),
                        ),
                      );
                    },
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
