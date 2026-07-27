import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/localization/localization_acess.dart';
import 'package:visual_merchandising_system_app/features/ui/cover_menu/page/body/widgets/cover_menu_banner.dart';
import 'package:visual_merchandising_system_app/features/ui/cover_menu/page/body/widgets/cover_menu_header_text.dart';

import '../../../../../core/utils/percentage_extension.dart';
import '../../../../menu/cover_menu/domain/entities/cover_menu.dart';
import 'package:visual_merchandising_system_app/features/ui/cover_menu/page/body/widgets/cover_menu_button.dart';

class CoverMenuBody extends StatelessWidget {
  final CoverMenu menu;
  final VoidCallback onOpenProduct;
  final VoidCallback onOpenPricing;
  final VoidCallback onExit;

  const CoverMenuBody({
    super.key,
    required this.menu,
    required this.onOpenProduct,
    required this.onOpenPricing,
    required this.onExit,
  });

  Widget _buildVerticalSpacing(
      {required double screenHeight, required double factor}) {
    return SizedBox(height: screenHeight * factor.percent());

  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Expanded(
          child: CoverMenuBanner(image: menu.bannerImage, onExit: onExit),
        ),
        CoverMenuHeaderText(text: getElementLocalized(menu.headerText)),
        CoverMenuButton(
          text: getElementLocalized(menu.buttonTextOne),
          onPressed: onOpenProduct,
        ),
        _buildVerticalSpacing(screenHeight: screenSize.height, factor: 1.0),
        CoverMenuButton(
          text: getElementLocalized(menu.buttonTextTwo),
          onPressed: onOpenPricing,
        ),
        _buildVerticalSpacing(screenHeight: screenSize.height, factor: 2.4),
      ],
    );
  }
}
