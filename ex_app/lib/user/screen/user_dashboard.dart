import 'package:ex_app/common/modal_helper.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:ex_app/user/screen/edit_tax/edit_tax_view.dart';
import 'package:ex_app/user/screen/edit_tax/empty_tax_screen.dart';
import 'package:ex_app/user/screen/edit_tax/tax_entered_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditTaxScreen extends StatelessWidget {
  const EditTaxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.user!.userTaxData != null) {
          return TaxEnteredView(
            onCTATap: () {
              ModalHelper.show(
                title: 'Declaration of financial information',
                context: context,
                child: EditTaxView(userTaxData: state.user!.userTaxData),
              );
            },
          );
        }
        return EmptyTaxInfoView(
          onCTATap: () {
            ModalHelper.show(
              context: context,
              acceptButtonText: 'Save',
              onAccept: () {},
            );
          },
        );
      },
    );
  }
}
