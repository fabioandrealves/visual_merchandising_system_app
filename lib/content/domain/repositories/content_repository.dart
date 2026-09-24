import '../entities/app_content.dart';

abstract interface class ContentRepository {
  Future<AppContent> load();
}
