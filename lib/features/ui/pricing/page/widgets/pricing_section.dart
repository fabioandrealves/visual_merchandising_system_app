import 'package:flutter/material.dart';

import '../../../../menu/pricing/domain/entities/pricing_data.dart';
import 'pricing_section/entire_price_box.dart';
import 'pricing_section/installments_dropdown.dart';

class PricingSection extends StatelessWidget {
  final PricingData data;

  const PricingSection({super.key, required this.data});

  String get _verifyIfHasDiscount =>
      data.hasDiscount ? '${data.discountedPrice}' : '${data.entirePrice}';

  @override
  Widget build(BuildContext context) {
    if (!data.hasInstallments) {
      return EntirePriceBox(price: data.entirePrice);
    } else {
      return Column(
        children: [
          Text(_verifyIfHasDiscount),
          InstallmentsDropdown(installments: data.installments),
        ],
      );
    }
  }
}
