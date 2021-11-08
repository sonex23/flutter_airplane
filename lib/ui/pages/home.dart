import 'package:airplane/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/card_destiny.dart';
import 'package:airplane/ui/widgets/card_destiny_tile.dart';
import 'package:airplane/ui/widgets/custom_title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return CustomTitle(
                      label: state is AuthSuccess
                          ? "Howdy, \n${state.user.name}"
                          : "",
                    );
                  },
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/image_profile.png"),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Where to fly today ?",
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 323,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CardDestiny(
                    name: "White House",
                    address: "Spain",
                    imgSrc: "assets/image_destiny_1.png",
                    rating: 4.8,
                  ),
                  CardDestiny(
                    name: "Lake Ciliwung",
                    address: "Tanggerang",
                    imgSrc: "assets/image_destiny_2.png",
                    rating: 4.7,
                  ),
                  CardDestiny(
                    name: "Hill Heyo",
                    address: "Monacco",
                    imgSrc: "assets/image_destiny_9.png",
                    rating: 4.9,
                  ),
                  CardDestiny(
                    name: "Ancient Temple",
                    address: "Japan",
                    imgSrc: "assets/image_destiny_10.png",
                    rating: 4.8,
                  ),
                  CardDestiny(
                    name: "Tower of Flower",
                    address: "Singapore",
                    imgSrc: "assets/image_destiny_11.png",
                    rating: 4.7,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: const [
                CardDestinyTile(
                  name: "Sydney Opera",
                  address: "Australy",
                  imgSrc: "assets/image_destiny_3.png",
                  rating: 4.7,
                ),
                CardDestinyTile(
                  name: "Lake Beratan",
                  address: "Purwokerto",
                  imgSrc: "assets/image_destiny_4.png",
                  rating: 4.6,
                ),
                CardDestinyTile(
                  name: "Roma",
                  address: "Italy",
                  imgSrc: "assets/image_destiny_5.png",
                  rating: 4.8,
                ),
                CardDestinyTile(
                  name: "Hill Heyo",
                  address: "Monacco",
                  imgSrc: "assets/image_destiny_9.png",
                  rating: 4.9,
                ),
                CardDestinyTile(
                  name: "Tower of Flower",
                  address: "Singapore",
                  imgSrc: "assets/image_destiny_11.png",
                  rating: 4.7,
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
