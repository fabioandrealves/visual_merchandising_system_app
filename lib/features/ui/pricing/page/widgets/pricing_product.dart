import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/utils/percentage_extension.dart';

import '../../../../../core/theme/app_text_styles.dart';

class PricingProduct extends StatelessWidget {
  final String productName;
  final String productImage;

  const PricingProduct({
    super.key,
    required this.productName,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            productName,
            style: AppTextStyles.pricingAppProductNameTextStyle(
              fontSize: screenSize.height * 2.00.percent(),
            ),
          ),
        ),
        SizedBox(
          height: screenSize.height * 34.00.percent(),
          width: screenSize.width * 55.00.percent(),
          child: Image.asset(productImage, fit: BoxFit.contain),
        ),
      ],
    );
  }
}
