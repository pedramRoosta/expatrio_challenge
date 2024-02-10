import 'package:ex_app/common/constants.dart';
import 'package:ex_app/common/widgets/ex_cta_button.dart';
import 'package:flutter/material.dart';

class TaxEnteredView extends StatelessWidget {
  const TaxEnteredView({
    this.onCTATap,
    super.key,
  });

  final void Function()? onCTATap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetConstants.taxGirl.path,
          ),
          const Text(
            'Wohoo!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text(
            'We have your tax data. you can edit them right here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          ExCtaButton(
            title: 'UPDATE YOU TAX DATA',
            onPressed: onCTATap,
          )
        ],
      ),
    );
  }
}
