import 'package:eth_wallet/utils/color.dart';
import 'package:eth_wallet/utils/fonts.dart';
import 'package:eth_wallet/views/deposite.dart';
import 'package:eth_wallet/views/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionButton extends ConsumerWidget {
  const TransactionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundedOutLineButton(
          action: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => const WithdrawView())),
          actionLable: "SELL",
        ),
        RoundedFillButton(
          action: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => const DepositeView())),
          actionLable: "BUY",
        ),
      ],
    );
  }
}

class RoundedOutLineButton extends StatelessWidget {
  final String actionLable;
  final VoidCallback action;
  const RoundedOutLineButton({
    Key? key,
    required this.actionLable,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: 150,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColor.primarygrey,
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          actionLable,
          style: AppStyle.subtitle700.copyWith(color: AppColor.primaryblack),
        ),
      ),
    );
  }
}

class RoundedFillButton extends StatelessWidget {
  final String actionLable;
  final VoidCallback action;
  const RoundedFillButton({
    Key? key,
    required this.actionLable,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: 150,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColor.primaryYellow,
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          actionLable,
          style: AppStyle.subtitle700.copyWith(color: AppColor.primaryblack),
        ),
      ),
    );
  }
}
