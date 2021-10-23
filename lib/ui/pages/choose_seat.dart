import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChooseSeat extends StatefulWidget {
  const ChooseSeat({Key? key}) : super(key: key);

  @override
  _ChooseSeatState createState() => _ChooseSeatState();
}

class _ChooseSeatState extends State<ChooseSeat> {
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
                          Column(
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
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
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
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
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
                          Column(
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
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
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
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icon_unavailable.png",
                                    width: 48,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Text(
                            "Your seat",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: light,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "A3, B3",
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: medium,
                              ),
                              textAlign: TextAlign.right,
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
                              ).format(540000000),
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
