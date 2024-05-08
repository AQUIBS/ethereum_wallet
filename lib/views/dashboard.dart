import 'package:eth_wallet/helper/action_buttons.dart';
import 'package:eth_wallet/helper/balance.dart';
import 'package:eth_wallet/helper/header.dart';
import 'package:eth_wallet/helper/transaction.dart';
import 'package:flutter/material.dart';
import 'package:eth_wallet/utils/color.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primaryblack,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const TransactionButton(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: const [
                AppHeader(),
                ShowBalance(),
                TransactionView(),
              ],
            ),
          ),
        ));
  }
}
