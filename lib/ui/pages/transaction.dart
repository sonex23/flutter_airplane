import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  void initState() {
    super.initState();
    User? user = FirebaseAuth.instance.currentUser;

    context.read<TransactionCubit>().fetchTransactionsByUser(user!.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: defaultMargin,
        ),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitle(label: 'Transaction History'),
              const SizedBox(
                height: 30,
              ),
              BlocBuilder<TransactionCubit, TransactionState>(
                  builder: (context, state) {
                if (state is TransactionLoading) {
                  return const Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else if (state is TransactionSuccess) {
                  return ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: state.transactions
                        .map(
                          (transaction) => CustomDropdownCard(transaction),
                        )
                        .toList(),
                  );
                } else {
                  return const SizedBox();
                }
              }),
            ],
          ),
        ));
  }
}

class CustomDropdownCard extends StatefulWidget {
  final TransactionModel transaction;
  const CustomDropdownCard(
    this.transaction, {
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropdownCard> createState() => _CustomDropdownCardState();
}

class _CustomDropdownCardState extends State<CustomDropdownCard> {
  bool showDetail = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showDetail = !showDetail;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      image:
                          NetworkImage(widget.transaction.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.transaction.destination.name,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        widget.transaction.destination.city,
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                            text: "Grand Total : ",
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                            children: [
                              TextSpan(
                                style: purpleTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                                text: NumberFormat.currency(
                                  locale: 'id',
                                  decimalDigits: 0,
                                  symbol: "IDR. ",
                                ).format(widget.transaction.grandTotal),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            showDetail
                ? const SizedBox(
                    height: 300,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
