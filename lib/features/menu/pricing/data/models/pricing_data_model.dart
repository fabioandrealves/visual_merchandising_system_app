import '../../domain/entities/pricing_data.dart';
import 'installment_model.dart';
import 'installment_model.dart';

class PricingDataModel extends PricingData {
  const PricingDataModel({
    required super.productName,
    required super.entirePrice,
    super.discountedPrice,
    super.discountPercentage,
    required super.installments,
    required super.paymentOptions,
  });

  factory PricingDataModel.fromJson(Map<String, dynamic> json) {
    return PricingDataModel(
      productName: json['product_name'],

      entirePrice: json['entire_price'].toDouble(),

      discountedPrice: json['discounted_price'] == null
          ? null
          : json['discounted_price'].toDouble(),

      discountPercentage: json['discount_percentage'],

      installments: List<InstallmentModel>.from(
        json['installments'].map((x) => InstallmentModel.fromJson(x)),
      ),
      paymentOptions: json['payment_options'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_name': productName,
      'entire_price': entirePrice,
      'discounted_price': discountedPrice,
      'discount_percentage': discountPercentage,
      'installments': installments
          .map((e) => InstallmentModel.fromEntity(e).toJson())
          .toList(),
      'payment_options': paymentOptions,
    };
  }

  factory PricingDataModel.fromEntity(PricingData entity) {
    return PricingDataModel(
      productName: entity.productName,
      entirePrice: entity.entirePrice,
      discountedPrice: entity.discountedPrice,
      discountPercentage: entity.discountPercentage,
      installments: entity.installments,
      paymentOptions: entity.paymentOptions,
    );
  }
}
