import '../../domain/entities/cover_menu.dart';

class CoverMenuModel extends CoverMenu {
  const CoverMenuModel({
    required super.bannerImage,
    required super.logoImage,
    required super.productImage,
    required super.headerText,
    required super.buttonTextOne,
    required super.buttonTextTwo,
  });

  factory CoverMenuModel.fromJson(Map<String, dynamic> json) {
    return CoverMenuModel(
      bannerImage: json['banner_image'],
      logoImage: json['logo_image'],
      productImage: json['product_image'],
      headerText: json['header_text'],
      buttonTextOne: json['button_text_one'],
      buttonTextTwo: json['button_text_two'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'banner_image': bannerImage,
      'logo_image': logoImage,
      'product_image': productImage,
      'header_text': headerText,
      'button_text_one': buttonTextOne,
      'button_text_two': buttonTextTwo,
    };
  }
}
