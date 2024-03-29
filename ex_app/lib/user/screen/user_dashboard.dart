import 'package:ex_app/common/constants.dart';
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
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  context.read<UserBloc>().add(const UserEvent.logout());
                },
                icon: const Icon(
                  Icons.logout,
                  size: 32,
                )),
          ),
        ),
        BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state.user?.userTaxData != null) {
              return TaxEnteredView(
                onCTATap: () {
                  ModalHelper.show(
                    title: StringConstants.declarationTitle,
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
                  acceptButtonText: StringConstants.save,
                  onAccept: () {},
                );
              },
            );
          },
        ),
      ],
    );
  }
}
