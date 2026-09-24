import '../../../features/menu/cover_menu/data/models/cover_menu_model.dart';
import '../../../features/menu/pricing/data/models/pricing_model.dart';
import '../../domain/entities/app_content.dart';

class AppContentModel extends AppContent {
  const AppContentModel({required super.coverMenu, super.pricing});

  factory AppContentModel.fromJson(Map<String, dynamic> json) {
    return AppContentModel(
      coverMenu: CoverMenuModel.fromJson(json['cover_menu']),
      pricing: json["pricing"] == null
          ? null
          : PricingModel.fromJson(json["pricing"]),
    );
  }
}
