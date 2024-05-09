import 'package:eth_wallet/controller.dart/text_controller.dart';
import 'package:eth_wallet/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Label extends StatelessWidget {
  final String lable;
  const Label({
    super.key,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 50),
      alignment: Alignment.center,
      child: Text(
        lable,
        style: AppStyle.headline.copyWith(
          color: AppStyle.primaryYellow,
        ),
      ),
    );
  }
}

class DescriptionTextFormField extends StatelessWidget {
  final TextEditingController controller;
  const DescriptionTextFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppStyle.primarygrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: controller,
        inputFormatters: [LengthLimitingTextInputFormatter(15)],
        style: AppStyle.subtitle400.copyWith(color: AppStyle.primaryblack),
        textAlign: TextAlign.left,
        cursorColor: AppStyle.primaryblack,
        keyboardType: TextInputType.name,
        onChanged: (value) {},
        decoration: InputDecoration(
            hintStyle: AppStyle.subtitle400.copyWith(
              color: AppStyle.primaryblack,
            ),
            hintText: 'Add a note',
            isDense: true, // important line
            contentPadding: const EdgeInsets.fromLTRB(23, 8, 10, 8),
            fillColor: Colors.white,
            disabledBorder: InputBorder.none,
            border: InputBorder.none),
      ),
    );
  }
}

class AmountTextFormField extends ConsumerWidget {
  final TextEditingController controller;
  const AmountTextFormField({required this.controller, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(formProvider);
    return Stack(
      children: [
        Positioned(
            top: 12,
            left: MediaQuery.of(context).size.width / model.dividor,
            child: const Text(
              "ETH",
              style: AppStyle.headline2,
            )),
        SizedBox(
          width: double.maxFinite,
          child: TextFormField(
            inputFormatters: [LengthLimitingTextInputFormatter(4)],
            style: AppStyle.headline2,
            textAlign: TextAlign.center,
            cursorColor: AppStyle.primaryYellow,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              if (value.length > model.count && value.length <= 4) {
                ref.read(formProvider.notifier).addSpacer(value);
                controller.text = value;
              }
              if (value.length < model.count) {
                ref.read(formProvider.notifier).removeSpacer(value);
                controller.text = value;
              }
            },
            decoration: const InputDecoration(
                hintStyle: AppStyle.headline2,
                hintText: '  0',
                fillColor: Colors.white,
                disabledBorder: InputBorder.none,
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
