import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int index;
  final String imgUrl;
  const CustomBottomNavigation({
    Key? key,
    required this.index,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().selectPage(index);
      },
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            imgUrl,
            width: 24,
            color: context.watch<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          const Spacer(),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.watch<PageCubit>().state == index
                  ? kPrimaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
