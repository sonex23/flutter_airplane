import 'package:airplane/models/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/choose_seat.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_destiny_2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              top: 30,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/emblem.png",
                  width: 108,
                ),
              ),
            ),
            Positioned(
              top: 236,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 214,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  children: [
                    const SizedBox(height: 310),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lake Ciliwung",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                "Tanggerang",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: light,
                                ),
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
                              style: whiteTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About",
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                              height: 2,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            "Photos",
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          SizedBox(
                            height: 70,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  margin: const EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/image_destiny_6.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 70,
                                  height: 70,
                                  margin: const EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/image_destiny_7.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 70,
                                  height: 70,
                                  margin: const EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/image_destiny_8.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Interest",
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
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
                                          "Kids Park",
                                          style: blackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: regular,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
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
                                          "Honor Bridge",
                                          style: blackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: regular,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
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
                                          "City Museum",
                                          style: blackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: regular,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
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
                                          "Central Mall",
                                          style: blackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  NumberFormat.currency(
                                          symbol: "IDR ", decimalDigits: 0)
                                      .format(2500000),
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: medium,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "per orang",
                                  style: greyTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: light,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: CustomButton(
                              label: "Book Now",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ChooseSeat(
                                      destination: DestinationModel(
                                        id: '0',
                                        name: "Lake Ciliwung",
                                        city: "Tanggerang",
                                        imageUrl: "assets/image_destiny_2.png",
                                        rating: 4.8,
                                        price: 2500000,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              width: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
