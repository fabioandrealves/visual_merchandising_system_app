import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../core/utils/percentage_extension.dart';

class CoverMenuButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CoverMenuButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.sizeOf(context);

    return SizedBox(
      width: screen.width * 91.0.percent(),
      height: screen.height * 7.0.percent(),
      child: Material(
        color: Colors.black,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: AppTextStyles.coverMenuButtonTextStyle(
                  fontSize: screen.height * 2.0.percent(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}