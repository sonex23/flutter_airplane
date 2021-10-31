import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_title.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChooseSeat extends StatefulWidget {
  const ChooseSeat({Key? key}) : super(key: key);

  @override
  _ChooseSeatState createState() => _ChooseSeatState();
}

class _ChooseSeatState extends State<ChooseSeat> {
  double price = 2500000;
  double total = 0;
  Map<String, Map> seatStatus = <String, Map>{
    "a": <String, String>{
      "1": "available",
      "2": "available",
      "3": "available",
      "4": "unavailable",
      "5": "available",
    },
    "b": <String, String>{
      "1": "unavailable",
      "2": "unavailable",
      "3": "available",
      "4": "unavailable",
      "5": "available",
    },
    "c": <String, String>{
      "1": "available",
      "2": "available",
      "3": "available",
      "4": "unavailable",
      "5": "unavailable",
    },
    "d": <String, String>{
      "1": "unavailable",
      "2": "unavailable",
      "3": "unavailable",
      "4": "available",
      "5": "available",
    },
  };

  List<String> choosenSeat = [];

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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 48,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "A",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: regular,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: seatStatus["a"]?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return SeatItem(
                                      onTap: () {
                                        if (seatStatus["a"]
                                                ?[(index + 1).toString()] ==
                                            "available") {
                                          setState(() {
                                            choosenSeat.add('A${index + 1}');
                                            seatStatus["a"]
                                                    ?[(index + 1).toString()] =
                                                "selected";
                                            total += price;
                                          });
                                        } else if (seatStatus["a"]
                                                ?[(index + 1).toString()] ==
                                            "selected") {
                                          setState(() {
                                            choosenSeat.remove('A${index + 1}');
                                            seatStatus["a"]
                                                    ?[(index + 1).toString()] =
                                                "available";
                                            total -= price;
                                          });
                                        }
                                      },
                                      blok: "a",
                                      number: (index + 1).toString(),
                                      status: seatStatus["a"]
                                          ?[(index + 1).toString()],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "B",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: regular,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: seatStatus["b"]?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return SeatItem(
                                      onTap: () {
                                        if (seatStatus["b"]
                                                ?[(index + 1).toString()] ==
                                            "available") {
                                          setState(() {
                                            choosenSeat.add('B${index + 1}');
                                            seatStatus["b"]
                                                    ?[(index + 1).toString()] =
                                                "selected";
                                            total += price;
                                          });
                                        } else if (seatStatus["b"]
                                                ?[(index + 1).toString()] ==
                                            "selected") {
                                          setState(() {
                                            choosenSeat.remove('B${index + 1}');
                                            seatStatus["b"]
                                                    ?[(index + 1).toString()] =
                                                "available";
                                            total -= price;
                                          });
                                        }
                                      },
                                      blok: "b",
                                      number: (index + 1).toString(),
                                      status: seatStatus["b"]
                                          ?[(index + 1).toString()],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: regular,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 16,
                                  ),
                                  child: SizedBox(
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        "1",
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: regular,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 16,
                                  ),
                                  child: SizedBox(
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        "2",
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: regular,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 16,
                                  ),
                                  child: SizedBox(
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        "3",
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: regular,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 16,
                                  ),
                                  child: SizedBox(
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        "4",
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: regular,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 16,
                                  ),
                                  child: SizedBox(
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        "5",
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: regular,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "C",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: regular,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: seatStatus["c"]?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return SeatItem(
                                      onTap: () {
                                        if (seatStatus["c"]
                                                ?[(index + 1).toString()] ==
                                            "available") {
                                          setState(() {
                                            choosenSeat.add('C${index + 1}');
                                            seatStatus["c"]
                                                    ?[(index + 1).toString()] =
                                                "selected";
                                            total += price;
                                          });
                                        } else if (seatStatus["c"]
                                                ?[(index + 1).toString()] ==
                                            "selected") {
                                          setState(() {
                                            choosenSeat.remove('C${index + 1}');
                                            seatStatus["c"]
                                                    ?[(index + 1).toString()] =
                                                "available";
                                            total -= price;
                                          });
                                        }
                                      },
                                      blok: "c",
                                      number: (index + 1).toString(),
                                      status: seatStatus["c"]
                                          ?[(index + 1).toString()],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "D",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: regular,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: seatStatus["d"]?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return SeatItem(
                                      onTap: () {
                                        if (seatStatus["d"]
                                                ?[(index + 1).toString()] ==
                                            "available") {
                                          setState(() {
                                            choosenSeat.add('D${index + 1}');
                                            seatStatus["d"]
                                                    ?[(index + 1).toString()] =
                                                "selected";
                                            total += price;
                                          });
                                        } else if (seatStatus["d"]
                                                ?[(index + 1).toString()] ==
                                            "selected") {
                                          setState(() {
                                            choosenSeat.remove('D${index + 1}');
                                            seatStatus["d"]
                                                    ?[(index + 1).toString()] =
                                                "avilable";
                                            total -= price;
                                          });
                                        }
                                      },
                                      blok: "d",
                                      number: (index + 1).toString(),
                                      status: seatStatus["d"]
                                          ?[(index + 1).toString()],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your seat",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: light,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 50,
                              ),
                              child: Text(
                                choosenSeat.isNotEmpty
                                    ? choosenSeat.join(",")
                                    : "No seat",
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: medium,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: light,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              NumberFormat.currency(
                                symbol: "IDR ",
                                decimalDigits: 0,
                                locale: "in",
                              ).format(total),
                              style: purpleTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  label: "Continue to Checkout",
                  onTap: () {},
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
