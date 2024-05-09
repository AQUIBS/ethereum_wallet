import 'package:eth_wallet/models/transaction_model.dart';
import 'package:eth_wallet/utils/color.dart';
import 'package:eth_wallet/utils/fonts.dart';
import 'package:eth_wallet/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

List<TransactionRecord> record = [
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 102,
      description: "NFT Purchase",
      timeStamp: 1715163253),
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 50,
      description: "BTC Exchange",
      timeStamp: 1715163253),
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 21,
      description: "Transfered",
      timeStamp: 1715163253),
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 49,
      description: "BTC Exchange",
      timeStamp: 1715163253),
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 32,
      description: "BTC Exchange",
      timeStamp: 1715163253),
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 78,
      description: "BTC Exchange",
      timeStamp: 1715163253),
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 65,
      description: "BTC Exchange",
      timeStamp: 1715163253),
  TransactionRecord(
      address: "0xB22c1F1dBC7C4277d52D2A1adfAebEF99FF16648",
      amount: 99,
      description: "BTC Exchange",
      timeStamp: 1715163253),
];

class TransactionView extends ConsumerWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Transaction Record",
          style: AppStyle.title1.copyWith(color: AppColor.yellowAccent),
        ),
        SizedBox(
          height: 430,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemCount: record.length,
              shrinkWrap: true,
              itemBuilder: (constext, index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(right: 20),
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.yellowAccent),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: SvgPicture.asset(
                          AppImages.ethereum1,
                          height: 50,
                        ),
                      ),
                      Text(
                        "${record[index].amount}",
                        style: AppStyle.headline,
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
