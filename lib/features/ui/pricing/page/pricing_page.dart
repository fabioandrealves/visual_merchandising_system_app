import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/features/ui/pricing/page/widgets/payment_footer.dart';
import 'package:visual_merchandising_system_app/features/ui/pricing/page/widgets/pricing_header.dart';
import 'package:visual_merchandising_system_app/features/ui/pricing/page/widgets/pricing_label.dart';
import 'package:visual_merchandising_system_app/features/ui/pricing/page/widgets/pricing_produt.dart';
import 'package:visual_merchandising_system_app/features/ui/pricing/page/widgets/pricing_section.dart';

import '../../../../core/utils/percentage_extension.dart';
import '../../../menu/pricing/domain/entities/pricing.dart';

class PricingPage extends StatelessWidget {
  final Pricing pricing;

  const PricingPage({super.key, required this.pricing});

  Widget _buildVerticalSpacing() {
    return SizedBox(height: 80);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                PricingHeader(logoImage: pricing.logoImage),
                PricingLabel(),
                PricingProduct(
                  productName: pricing.data.productName,
                  productImage: pricing.productImage,
                ),
                PricingSection(data: pricing.data),
                _buildVerticalSpacing(),
              ],
            ),
          ),
          PaymentFooter(paymentOptions: pricing.data.paymentOptions),
        ],
      ),
    );
  }
}
