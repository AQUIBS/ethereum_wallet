import 'package:eth_wallet/utils/fonts.dart';
import 'package:eth_wallet/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowBalance extends ConsumerWidget {
  const ShowBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Available Balance",
            style: AppStyle.title1,
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppImages.ethPurple,
                height: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "100 ETH",
                style: AppStyle.title2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
