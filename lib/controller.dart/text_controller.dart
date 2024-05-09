// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eth_wallet/models/form_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final formProvider =
    StateNotifierProvider<FormController, FormModel>((ref) => FormController());

class FormController extends StateNotifier<FormModel> {
  FormController() : super(FormModel.def());

  void addSpacer(String value) {
    state = state.copyWith(dividor: (state.dividor + value.length / 60 + 0.2));
    state = state.copyWith(count: value.length);
  }

  void removeSpacer(String value) {
    if (value.isEmpty) {
      state = state.copyWith(dividor: 3.2);
    } else {
      state =
          state.copyWith(dividor: (state.dividor - value.length / 60 - 0.2));
    }

    state = state.copyWith(count: value.length);
  }
}
