import 'package:flutter/material.dart';

import '../../core/utils/responsive/orientation_handler.dart';
import '../../generated/l10n.dart';

class MenuWrapper extends StatelessWidget {
  final bool shouldFallbackToEnglish;
  final Widget homePage;

  const MenuWrapper({
    super.key,
    required this.shouldFallbackToEnglish,
    required this.homePage,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationHandler(
      child: shouldFallbackToEnglish ? _FallbackToEnglish(homePage: homePage) : homePage,
    );
  }
}

class _FallbackToEnglish extends StatelessWidget {
  final Widget homePage;

  const _FallbackToEnglish({required this.homePage});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: S.load(const Locale('en')),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Container();
        }
        return homePage;
      },
    );
  }
}
