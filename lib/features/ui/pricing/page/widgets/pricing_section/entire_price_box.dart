import 'package:flutter/material.dart';


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
