import 'package:ex_app/common/constants.dart';
import 'package:ex_app/common/widgets/ex_cta_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyTaxInfoView extends StatelessWidget {
  const EmptyTaxInfoView({
    this.onCTATap,
    super.key,
  });

  final void Function()? onCTATap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AssetConstants.cryingGirl.path,
            width: 180,
          ),
          const Text(
            'Uh-Oh!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text(
            'We need your tax data in order for you to access your account',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          ExCtaButton(
            title: 'ENTER YOU TAX DATA',
            onPressed: onCTATap,
          )
        ],
      ),
    );
  }
}
