import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/utils/percentage_extension.dart';

import '../../../../../core/localization/localization_acess.dart';
import '../../../../../core/theme/app_text_styles.dart';

class PricingLabel extends StatelessWidget {
  const PricingLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Container(
      height: height * 9.00.percent(),
      width: double.infinity,
      color: Colors.black,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Text(
        getElementLocalized(
          'pricing_app_pricing_text_id_1',
        ),
        style: AppTextStyles
            .pricingAppPricingLabelTextStyle(
          fontSize: height * 2.00.percent(),
        ),
      ),
    );
  }
}