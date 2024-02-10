import 'package:ex_app/common/constants.dart';
import 'package:ex_app/common/modal_helper.dart';
import 'package:ex_app/common/widgets/ex_cta_button.dart';
import 'package:ex_app/common/widgets/ex_dropdown.dart';
import 'package:ex_app/common/widgets/ex_text_form_field.dart';
import 'package:ex_app/user/bloc/user_bloc.dart';
import 'package:ex_app/user/models/user_tax_data/user_tax_data.dart';
import 'package:ex_app/user/screen/edit_tax/country_tax_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class EditTaxView extends StatefulWidget {
  const EditTaxView({
    this.userTaxData,
    super.key,
  });
  final UserTaxData? userTaxData;
  @override
  State<EditTaxView> createState() => _EditTaxViewState();
}

class _EditTaxViewState extends State<EditTaxView> {
  late List<Map<String, String>> userTaxData;
  final _formKey = GlobalKey<FormBuilderState>();
  bool usPolicy = false;
  @override
  void initState() {
    super.initState();
    userTaxData = initialTaxData();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              if (state.userError == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      StringConstants.taxInfoUpdatedSuccessfullyMessage,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.userError!),
                  ),
                );
              }
            },
            child: Column(
              children: [
                ...userTaxData.map(
                  (e) {
                    final index = userTaxData.indexOf(e);
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ExDropDown(
                            name: 'country$index',
                            title: getTaxFieldTitle(index),
                            value: getCountryName(e['country']!),
                            onTap: () async {
                              final country =
                                  await ModalHelper.show<Map<String, dynamic>>(
                                title: StringConstants.selectCountryTitle,
                                context: context,
                                child: CoutryTaxSheet(
                                  countries: getSelectableCountries(),
                                ),
                              );
                              updateCountryInfo(
                                index: index,
                                country: country!['code'] as String,
                              );
                            },
                          ),
                          ExTextField(
                            onChange: (value) {
                              updateCountryInfo(
                                index: index,
                                taxId: value,
                              );
                            },
                            name: 'tax$index',
                            initialValue: e['id'],
                            title: StringConstants.taxIdNumberTitle,
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          userTaxData.add({
                            'country': '',
                            'id': '',
                          });
                        });
                      },
                      child: Text(
                        userTaxData.isNotEmpty
                            ? StringConstants.addAnotherCountry
                            : StringConstants.addNewCountry,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    if (userTaxData.isNotEmpty)
                      TextButton(
                        onPressed: () {
                          setState(() {
                            userTaxData.removeLast();
                          });
                        },
                        child: const Text(
                          StringConstants.removeCountry,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox.adaptive(
                        value: usPolicy,
                        onChanged: (value) {
                          setState(() {
                            usPolicy = value!;
                          });
                        }),
                    const Expanded(
                      child: Text(StringConstants.usPersonConfirmationText),
                    ),
                  ],
                ),
                ExCtaButton(
                  title: 'SAVE',
                  onPressed: () {
                    context
                        .read<UserBloc>()
                        .add(UserEvent.updateTaxInfo(taxData: getUserInfo()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> getUserInfo() {
    final map = {
      "primaryTaxResidence": {},
      "secondaryTaxResidence": [],
      "usPerson": usPolicy,
    };

    for (var i = 0; i < userTaxData.length; i++) {
      final userTax = userTaxData[i];
      if (i == 0) {
        map['primaryTaxResidence'] = {
          'country': userTax['country'],
          'id': userTax['id'],
        };
      } else {
        (map['secondaryTaxResidence']! as List).add({
          'country': userTax['country'],
          'id': userTax['id'],
        });
      }
    }
    return map;
  }

  void updateCountryInfo({
    required int index,
    String? country,
    String? taxId,
  }) {
    setState(() {
      if (country != null) userTaxData[index]['country'] = country;
      if (taxId != null) userTaxData[index]['id'] = taxId;
    });
  }

  List<Map<String, dynamic>> getSelectableCountries() {
    final List<Map<String, Object>> selectableCountries = [];
    selectableCountries.addAll(CountriesConstants.countries);
    for (var i = 0; i < userTaxData.length; i++) {
      final userTax = userTaxData[i];
      selectableCountries.removeWhere(
        (country) => country['code'] == userTax['country'],
      );
    }
    return selectableCountries;
  }

  List<Map<String, String>> initialTaxData() {
    final taxData = widget.userTaxData;
    final List<Map<String, String>> userTaxData = [];
    if (taxData != null) {
      usPolicy = taxData.usPerson;
      if (taxData.primaryTaxResidence != null) {
        userTaxData.add({
          'country': taxData.primaryTaxResidence!.country,
          'id': taxData.primaryTaxResidence!.id,
        });
      }
      if (taxData.secondaryTaxResidence != null) {
        for (var i = 0; i < taxData.secondaryTaxResidence!.length; i++) {
          userTaxData.add({
            'country': taxData.secondaryTaxResidence![i].country,
            'id': taxData.secondaryTaxResidence![i].id,
          });
        }
      }
    }
    return userTaxData;
  }

  String getCountryName(String code) {
    try {
      final country = CountriesConstants.countries.firstWhere(
        (element) => element['code'] == code,
      );
      return country['label'] as String;
    } catch (e) {
      return '';
    }
  }

  String getTaxFieldTitle(int index) {
    if (index == 0) {
      return 'Which country serves as your primary tax residence?';
    } else {
      return 'Do you gave other tax residences?';
    }
  }
}
