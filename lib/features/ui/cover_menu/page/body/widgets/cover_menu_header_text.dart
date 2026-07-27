import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../core/utils/percentage_extension.dart';


class CoverMenuHeaderText extends StatelessWidget {
  final String text;
  const CoverMenuHeaderText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.5.percent(),
        bottom: screenSize.height * 4.3.percent(),
      ),
      child: SizedBox(
        width: screenSize.width * 86.0.percent(),
        child: Text(
          text,
          style: AppTextStyles.coverMenuHeaderTextStyle(
            fontSize: screenSize.height * 3.5.percent(),
          ),
        ),
      ),
    );
  }
}