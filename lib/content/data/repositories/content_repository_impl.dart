import '../../domain/entities/app_content.dart';
import '../../domain/repositories/content_repository.dart';
import '../datasource/content_local_datasource.dart';
import '../models/app_content_model.dart';

class ContentRepositoryImpl implements ContentRepository {
  final ContentLocalDataSource dataSource;

  final String asset;

  const ContentRepositoryImpl({required this.dataSource, required this.asset});

  @override
  Future<AppContent> load() async {
    return AppContentModel.fromJson(await dataSource.loadJson(asset));
  }
}
