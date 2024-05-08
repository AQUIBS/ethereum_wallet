import 'package:eth_wallet/utils/color.dart';
import 'package:eth_wallet/utils/fonts.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "ethereum",
        style: AppStyle.headline.copyWith(color: AppColor.yellowAccent),
      ),
    );
  }
}
