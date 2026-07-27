import 'pricing_data.dart';

class Pricing {
  final String logoImage;
  final String productImage;
  final PricingData data;

  const Pricing({
    required this.logoImage,
    required this.productImage,
    required this.data,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Pricing &&
              logoImage == other.logoImage &&
              productImage == other.productImage &&
              data == other.data;

  @override
  int get hashCode => Object.hash(
    logoImage,
    productImage,
    data,
  );
}