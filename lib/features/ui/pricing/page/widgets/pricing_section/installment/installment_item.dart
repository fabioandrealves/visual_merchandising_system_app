import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/features/menu/pricing/domain/entities/installment.dart';

import '../../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../../core/utils/percentage_extension.dart';

class InstallmentItem extends StatelessWidget {
  final Installment item;

  const InstallmentItem({super.key, required this.item});

  TextStyle _installmentTextStyle({required double screenHeight}) {
    return AppTextStyles.pricingAppInstallmentsLabelTextStyle(
      fontSize: screenHeight * 1.9.percent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${item.quantity}x',
          style: _installmentTextStyle(screenHeight: screenSize.height),
        ),
        Text(
          '\$${item.amount}',
          style: _installmentTextStyle(screenHeight: screenSize.height),
        ),
      ],
    );
  }
}
