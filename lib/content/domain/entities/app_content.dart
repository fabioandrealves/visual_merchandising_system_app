import '../../../features/menu/cover_menu/domain/entities/cover_menu.dart';
import '../../../features/menu/pricing/domain/entities/pricing.dart';
import 'package:flutter/material.dart';

class AppContent {
  final CoverMenu coverMenu;
  final Pricing? pricing;

  const AppContent({
    required this.coverMenu,
    required this.pricing,
  });
}
