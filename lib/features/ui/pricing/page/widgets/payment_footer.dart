import 'package:flutter/material.dart';

class PaymentFooter extends StatelessWidget {
  final String paymentOptions;

  const PaymentFooter({super.key, required this.paymentOptions});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        width: double.infinity,
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          paymentOptions,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
