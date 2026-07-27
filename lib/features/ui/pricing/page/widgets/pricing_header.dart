import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/utils/percentage_extension.dart';

class PricingHeader extends StatelessWidget {
  final String logoImage;

  const PricingHeader({super.key, required this.logoImage});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 11.0.percent(),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 5, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logoImage,
              height: screenSize.height * 8.00.percent(),
              width: screenSize.width * 44.0.percent(),
            ),

            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
