import 'package:eth_wallet/helper/action_buttons.dart';
import 'package:eth_wallet/helper/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eth_wallet/utils/fonts.dart';

class DepositeView extends StatefulWidget {
  const DepositeView({super.key});

  @override
  State<DepositeView> createState() => _DepositeViewState();
}

class _DepositeViewState extends State<DepositeView> {
  TextEditingController amount = TextEditingController();
  TextEditingController description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: AppStyle.primaryblack,
        ),
        leading: IconButton(
            onPressed: () async {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              await Future.delayed(const Duration(milliseconds: 100));
              if (mounted) {
                Navigator.pop(context);
              }
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppStyle.primaryYellow,
            )),
      ),
      backgroundColor: AppStyle.primaryblack,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Label(lable: "Adding Deposite"),
                AmountTextFormField(controller: amount),
                DescriptionTextFormField(controller: description),
                const SizedBox(height: 150),
                RoundedFillButton(actionLable: "DIPOSITE", action: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
