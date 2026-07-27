import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:visual_merchandising_system_app/features/ui/pricing/page/pricing_page.dart';

import '../../../menu/cover_menu/domain/entities/cover_menu.dart';
import '../../../menu/pricing/domain/entities/pricing.dart';
import 'body/cover_menu_body.dart';

class CoverMenuPage extends StatelessWidget {
  final CoverMenu menu;
  final Widget productMenu;
  final Pricing pricing;

  const CoverMenuPage({
    super.key,
    required this.menu,
    required this.productMenu,
    required this.pricing,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CoverMenuBody(
        menu: menu,
        onExit: () {
          SystemNavigator.pop();
        },
        onOpenProduct: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => productMenu),
          );
        },
        onOpenPricing: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => PricingPage(pricing: pricing)),
          );
        },
      ),
    );
  }
}
