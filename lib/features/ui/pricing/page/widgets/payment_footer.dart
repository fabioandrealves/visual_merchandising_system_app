import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/theme/app_text_styles.dart';
import 'package:visual_merchandising_system_app/core/utils/percentage_extension.dart';

class PaymentFooter extends StatelessWidget {
  final String paymentOptions;

  const PaymentFooter({super.key, required this.paymentOptions});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        width: double.infinity,
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          paymentOptions,
          style: AppTextStyles.pricingAppPaymentOptionsTextStyle(
            fontSize: screenHeight * 2.00.percent(),
          ),
        ),
      ),
    );
  }
}
