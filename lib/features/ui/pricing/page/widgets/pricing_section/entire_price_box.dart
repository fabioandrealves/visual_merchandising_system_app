import 'package:flutter/material.dart';

import '../../../../../../core/formatters/currency_formatter.dart';
import '../../../../../../core/utils/constants.dart';

class EntirePriceBox extends StatelessWidget {
  final double price;

  const EntirePriceBox({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Center(
        child: Text(
          CurrencyFormatter.format(
            locale: Constants.getSystemCurrentLanguageCode(),
            value: price,
          ),
        ),
      ),
    );
  }
}
