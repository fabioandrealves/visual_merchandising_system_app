import '../entities/app_content.dart';
import '../repositories/content_repository.dart';

class GetAppContent {
  final ContentRepository repository;

  const GetAppContent({required this.repository});

  Future<AppContent> call() {
    return repository.load();
  }
}