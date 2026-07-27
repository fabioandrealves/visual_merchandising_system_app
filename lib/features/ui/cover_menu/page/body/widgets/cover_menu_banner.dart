import 'package:flutter/material.dart';

import 'package:visual_merchandising_system_app/features/ui/cover_menu/page/body/widgets/cover_menu_exit_button.dart';

class CoverMenuBanner extends StatelessWidget {
  final String image;
  final VoidCallback onExit;

  const CoverMenuBanner({super.key, required this.image, required this.onExit});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(image, fit: BoxFit.cover),
        Positioned(
          top: 20,
          right: 20,
          child: CoverMenuExitButton(onPressed: onExit),
        ),
      ],
    );
  }
}
