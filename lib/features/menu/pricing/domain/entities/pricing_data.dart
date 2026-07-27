import 'installment.dart';

class PricingData {
  final String productName;
  final double entirePrice;
  final double? discountedPrice;
  final int? discountPercentage;
  final List<Installment> installments;
  final String paymentOptions;

  const PricingData({
    required this.productName,
    required this.entirePrice,
    this.discountedPrice,
    this.discountPercentage,
    required this.installments,
    required this.paymentOptions,
  });

  bool get hasDiscount => discountedPrice != null && discountPercentage != null;

  bool get hasInstallments => installments.isNotEmpty;

  double get finalPrice => discountedPrice ?? entirePrice;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PricingData &&
          productName == other.productName &&
          entirePrice == other.entirePrice &&
          discountedPrice == other.discountedPrice &&
          discountPercentage == other.discountPercentage &&
          installments == other.installments &&
          paymentOptions == other.paymentOptions;

  @override
  int get hashCode => Object.hash(
    productName,
    entirePrice,
    discountedPrice,
    discountPercentage,
    installments,
    paymentOptions,
  );
}
