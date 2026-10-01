import '../../domain/entities/pricing.dart';
import 'pricing_data_model.dart';

class PricingModel extends Pricing {
  const PricingModel({
    required super.label,
    required super.logoImage,
    required super.productImage,
    required super.data,
  });

  factory PricingModel.fromJson(Map<String, dynamic> json) {
    return PricingModel(
      label: json["label"],
      logoImage: json['logo_image'],
      productImage: json['product_image'],
      data: PricingDataModel.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'logo_image': logoImage,
      'product_image': productImage,
      'pricing_data': PricingDataModel.fromEntity(data).toJson(),
    };
  }

  factory PricingModel.fromEntity(Pricing entity) {
    return PricingModel(
      label: entity.label,
      logoImage: entity.logoImage,
      productImage: entity.productImage,
      data: entity.data,
    );
  }
}
