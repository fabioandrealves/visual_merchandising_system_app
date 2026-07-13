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
      bannerImage: json['bannerImage'],
      logoImage: json['logoImage'],
      productImage: json['productImage'],
      headerText: json['headerText'],
      buttonTextOne: json['buttonTextOne'],
      buttonTextTwo: json['buttonTextTwo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bannerImage': bannerImage,
      'logoImage': logoImage,
      'productImage': productImage,
      'headerText': headerText,
      'buttonTextOne': buttonTextOne,
      'buttonTextTwo': buttonTextTwo,
    };
  }
}
