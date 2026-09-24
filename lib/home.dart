import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:visual_merchandising_system_app/content/data/repositories/content_repository_impl.dart';
import 'package:visual_merchandising_system_app/content/domain/usecases/get_app_content_use_case.dart';

import 'content/content_builder.dart';
import 'content/data/datasource/content_local_datasource.dart';
import 'features/ui/cover_menu/page/cover_menu_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final GetAppContent _getAppContent;
  ContentRepositoryImpl repository = ContentRepositoryImpl(
    dataSource: ContentLocalDataSource(),
    asset: 'assets/app_content.json',
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getAppContent = GetAppContent(repository: repository);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    if (!kIsWeb) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ContentBuilder(
      getAppContent: _getAppContent,
      builder: (context, content) {
        return CoverMenuPage(
          menu: content.coverMenu,
          productMenu: Container(color: Colors.blue),
          pricing: content.pricing!,
        );
      },
    );
  }
}