import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/utils/custom_logger.dart';

import '../../../../../../core/formatters/currency_formatter.dart';
import '../../../../../../core/utils/constants.dart';

class EntirePriceBox extends StatelessWidget {
  final double price;

  const EntirePriceBox({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,
      margin: const EdgeInsets.all(40),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Center(child: Text("\$$price")),
    );
  }
}
