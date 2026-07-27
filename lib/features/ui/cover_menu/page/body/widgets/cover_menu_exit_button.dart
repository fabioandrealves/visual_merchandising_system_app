import 'package:flutter/material.dart';
import 'package:visual_merchandising_system_app/core/utils/percentage_extension.dart';

class CoverMenuExitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;

  const CoverMenuExitButton({
    super.key,
    required this.onPressed,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onPressed,
        customBorder: CircleBorder(),
        child: SizedBox(
          width: screenSize.width * 8.0.percent(),
          height: screenSize.height * 8.0.percent(),
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: color, width: 1.5),
            ),
            child: Center(
              child: Icon(
                Icons.close_rounded,
                color: color,
                size: screenSize.width * 8.0.percent(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
