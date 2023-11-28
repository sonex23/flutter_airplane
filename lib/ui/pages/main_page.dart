import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home.dart';
import 'package:airplane/ui/pages/setting.dart';
import 'package:airplane/ui/pages/transaction.dart';
import 'package:airplane/ui/pages/wallet.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  final int? page;
  const MainPage({
    this.page,
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const Home(),
      const Transaction(),
      const Wallet(),
      const Setting(),
    ];

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            pages[context.watch<PageCubit>().state],
            Positioned.fill(
              bottom: 10,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomBottomNavigation(
                        index: 0,
                        imgUrl: "assets/icon_browse.png",
                      ),
                      CustomBottomNavigation(
                        index: 1,
                        imgUrl: "assets/icon_book.png",
                      ),
                      CustomBottomNavigation(
                        index: 2,
                        imgUrl: "assets/icon_credit.png",
                      ),
                      CustomBottomNavigation(
                        index: 3,
                        imgUrl: "assets/icon_setting.png",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
