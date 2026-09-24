import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/content/domain/usecases/get_app_content_use_case.dart';
import 'package:visual_merchandising_system_app/core/utils/custom_logger.dart';

import 'domain/entities/app_content.dart';

class ContentBuilder extends StatelessWidget {
  final GetAppContent getAppContent;
  final Widget Function(BuildContext context, AppContent content) builder;

  const ContentBuilder({
    super.key,
    required this.getAppContent,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AppContent>(
      future: getAppContent(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          CustomLogger.logToLogcat(
            tag: 'CONTENT',
            subTag: 'LOAD_ERROR',
            message:
                'error=${snapshot.error}\n'
                'stackTrace=${snapshot.stackTrace}',
            logLevel: DeviceLogLevel.error,
          );
          return Center(
            child: Text(
              'Não foi possível carregar o conteúdo.',
              textAlign: TextAlign.center,
            ),
          );
        } else if (!snapshot.hasData) {
          return const Center(child: Text('Nenhum conteúdo encontrado.'));
        } else {
          CustomLogger.logInfo(snapshot.data);
          return builder(context, snapshot.data!);
        }
      },
    );
  }
}
