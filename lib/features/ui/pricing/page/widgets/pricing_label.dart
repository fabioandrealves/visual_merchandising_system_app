import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/utils/percentage_extension.dart';
import '../../../../../core/theme/app_text_styles.dart';

class PricingLabel extends StatelessWidget {
  final String label;

  const PricingLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Container(
      height: screenHeight * 9.00.percent(),
      width: double.infinity,
      color: Colors.black,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        label,
        style: AppTextStyles.pricingAppPricingLabelTextStyle(
          fontSize: screenHeight * 2.00.percent(),
        ),
      ),
    );
  }
}
